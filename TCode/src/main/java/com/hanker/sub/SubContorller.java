package com.hanker.sub;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.hanker.DTO.t_BoardVO;

@Controller
public class SubContorller {

	
	@Inject
	private SubService subsc;
	
	
	@RequestMapping(value="/sub/category/{path}", method=RequestMethod.GET)
	public String javaBoard(Model model, HttpServletRequest req, @PathVariable(value="path") String PATH) throws Exception{
		String tCate = PATH.toLowerCase();
		
		List<t_BoardVO> list = subsc.javaList(tCate);
		
		model.addAttribute("list", list);
		model.addAttribute("title", PATH);
		
		return "sub/java";
	}
	
	@RequestMapping(value="/sub/newWrite", method=RequestMethod.GET)
	public String newWrite(Model model) throws Exception{
		
		List<t_BoardVO> cateList = subsc.categoryList();
		
		model.addAttribute("list", cateList);
		return "sub/newWrite";
	}
	
	@RequestMapping(value="/sub/writeChck", method=RequestMethod.POST)
	public String writeChck(Model model, HttpServletRequest req) throws Exception{
		
		t_BoardVO tbVO = new t_BoardVO();
		tbVO.setT_cno(Integer.parseInt(req.getParameter("CNO")));
		tbVO.setT_title(req.getParameter("TITLE"));
		tbVO.setT_content(req.getParameter("CONTENT"));
		
		subsc.insBoard(tbVO);
		
		return "jsonView";
	}
	
	/**
	 * 2020.12.07
	 * by.Hanker
	 * Comment
	 *  - 파일 업로드
	 */
	@RequestMapping(value="/sub/imgUpload", method=RequestMethod.POST)
	public void imgUpload(HttpServletRequest req, HttpServletResponse rep, MultipartHttpServletRequest multiFile,
						@RequestParam MultipartFile upload) throws Exception{
		
		UUID uid = UUID.randomUUID();
		
		OutputStream out = null;
		PrintWriter printWriter = null;
		
		//인코딩
		rep.setCharacterEncoding("utf-8");
		rep.setContentType("text/html;charset=utf-8");
		
		try {
			String fileName = upload.getOriginalFilename();
			byte[] bytes = upload.getBytes();
			
			String path = "D:\\Projects\\JAVA\\TCode\\TCode\\src\\main\\webapp\\resources\\imgUpload";
			String ckUploadPath = path + uid + "_" + fileName;
			File folder = new File(path);
			
			if(!folder.exists()) {
				try {
					folder.mkdirs();
				}catch (Exception e) {
					e.getStackTrace();
				}
			}
			
			out = new FileOutputStream(new File(ckUploadPath));
			out.write(bytes);
			out.flush(); //ouputStream에 저장된 데이터를 전송하고 초기화
			
			String callback = req.getParameter("CKEditorFuncNum");
			printWriter = rep.getWriter();
			String fileUrl = "/sub/imgSubmit?uid="+uid+"&fileName="+fileName;
			
			printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
			printWriter.flush();
			
		}catch(IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(out != null) {
					out.close();
				}
				if(printWriter != null) {
					printWriter.close();
				}
			}catch(IOException e) {
				e.printStackTrace();
			}
		}
		
		return;
	}
	

	/**
	 * 2020.12.07
	 * by.Hanker
	 * Comment
	 *  - 게시판에서 img View 
	 */
	@RequestMapping(value="/sub/imgSubmit")
	public void ckSubmit(@RequestParam(value="uid") String uid, @RequestParam(value="fileName") String fileName, 
						HttpServletRequest req, HttpServletResponse rep) throws Exception{
		String path = "D:\\Projects\\JAVA\\TCode\\TCode\\src\\main\\webapp\\resources\\imgUpload";
		String sDirPath = path + uid + "_" + fileName;
		
		File imgFile = new File(sDirPath);
		
		if(imgFile.isFile()) {
			byte[] bytes = new byte[1024];
			int readByte = 0;
			int length = 0;
			byte[] imgBytes = null;
			
			FileInputStream fileInputStream = null;
			ByteArrayOutputStream outputStream = null;
			ServletOutputStream out = null;
			
			try {
				fileInputStream = new FileInputStream(imgFile);
				outputStream = new ByteArrayOutputStream();
				out = rep.getOutputStream();
				
				while((readByte = fileInputStream.read(bytes)) != -1) {
					outputStream.write(bytes, 0, readByte);
				}
				
				imgBytes = outputStream.toByteArray();
				length = imgBytes.length;
				out.write(imgBytes, 0, length);
				out.flush();
			} catch(IOException e) {
				e.printStackTrace();
			} finally {
				outputStream.close();
				fileInputStream.close();
				out.close();
			}
			
			
		}
	}
	
	/**
	 * 2020.12.07
	 * by.Hanker
	 * Comment
	 *  - sub/view 글 상세보기 페이지
	 */
	@RequestMapping(value="/sub/view", method=RequestMethod.GET)
	public String boardView(Model model, @RequestParam("bno") int bno) throws Exception{
		// 조회수 증가
		subsc.bCntAdd(bno);
		
		// 게시판 ID(bno)에 일치하는 데이터 가져오기
		t_BoardVO tbVO = new t_BoardVO();
		tbVO = subsc.selJavaView(bno);
		
		model.addAttribute("SC", tbVO);
		model.addAttribute("title", tbVO.getT_category());
		return "sub/view";
	}
	
}
