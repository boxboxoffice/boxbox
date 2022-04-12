package boxOffice.service.movie;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import boxOffice.dao.MovieDao;
import boxOffice.dao.NowShowingDao;
import boxOffice.model.Movie;
import boxOffice.model.NowShowing;
import boxOffice.model.Theater;

public class MovieWrite implements CommandProcess {

	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		/*
		 * try { request.setCharacterEncoding("utf-8"); } catch
		 * (UnsupportedEncodingException e) { e.printStackTrace(); }
		 */
		
				
		MovieDao md = MovieDao.getInstance();		
				
		// 파일 업로드 경로
		String real = request.getSession().getServletContext().getRealPath("images/poster");
		
		int maxSize = 1024 * 1024 * 5; // 최대 사이즈 5mb
		
		Movie movie = new Movie();
		
		try {																			// 같은 파일 이름에 자동으로 숫자 추가
			MultipartRequest mr = new MultipartRequest(request, real, maxSize, "utf-8", new DefaultFileRenamePolicy());
			String poster = mr.getFilesystemName("poster"); // fboardUpload input 내용 불러오기
			
			movie.setPoster(poster);
			
			int mvCode =md.selectMvCode();
			System.out.println(mvCode);
			String mvTitle = mr.getParameter("mvTitle");
			int mvTag = Integer.parseInt(mr.getParameter("mvTag"));
			String openDate = mr.getParameter("openDate");
			System.out.println(openDate);
			int mvPrice = Integer.parseInt(mr.getParameter("mvPrice")); 
			String director = mr.getParameter("director");
			String majorActor = mr.getParameter("majorActor");
			String mvInfo = mr.getParameter("mvInfo");
			String mvContent = mr.getParameter("mvContent");
			int mvGrade = Integer.parseInt(mr.getParameter("mvGrade"));
			int movieStar = Integer.parseInt(mr.getParameter("movieStar"));
			int runningTime = Integer.parseInt(mr.getParameter("runningTime"));
			String Genre = mr.getParameter("Genre");
			
			String[] theatercode=mr.getParameterValues("theater");
			String[] screencode1=mr.getParameterValues("screen1");
			String[] screencode2=mr.getParameterValues("screen2");
			String[] screencode3=mr.getParameterValues("screen3");
			String[] screencode4=mr.getParameterValues("screen4");
			int[] theatercodei = null;
			if( theatercode != null ){
			theatercodei = new int[ theatercode.length ];
			for( int i=0;i <theatercode.length;i++) {
				System.out.println(theatercode[i]);
					theatercodei[i] = Integer.parseInt( theatercode[i] );
					System.out.println(theatercodei[i]);
			}
			}
			
			int[] screencode1i = null;
			if( screencode1 != null ){
				screencode1i = new int[ screencode1.length ];
				for( int i=0;i <screencode1.length;i++) {
					screencode1i[i] = Integer.parseInt( screencode1[i] );
					System.out.println(screencode1i[i]);
				}
				}
			int[] screencode2i = null;
			if( screencode2 != null ){
				screencode2i = new int[ screencode2.length ];
				for( int i=0;i <screencode2.length;i++) {
					screencode2i[i] = Integer.parseInt( screencode2[i] );
					System.out.println(screencode2i[i]);
				}
				}
			int[] screencode3i = null;
			if( screencode3 != null ){
				screencode3i = new int[ screencode3.length ];
				for( int i=0;i <screencode3.length;i++) {
					screencode3i[i] = Integer.parseInt( screencode3[i] );
					System.out.println(screencode3i[i]);
				}
				}
			int[] screencode4i = null;
			if( screencode4 != null ){
				screencode4i = new int[ screencode4.length ];
				for( int i=0;i <screencode4.length;i++) {
					screencode4i[i] = Integer.parseInt( screencode4[i] );
					System.out.println(screencode4i[i]);
				}
				}
			NowShowingDao nd=NowShowingDao.getInstance();
			
			
			
			Date sqlDate1=Date.valueOf(openDate);
			long diffDay = sqlDate1.getTime() / (24*60*60*1000);
			Date sqlDate3=sqlDate1;
			Calendar cal=Calendar.getInstance();
			cal.setTime(sqlDate3);
			cal.add(Calendar.DATE,1);
			DateFormat dateFormat=new SimpleDateFormat("YYYY/MM/dd");
			
			
			for(int k=0;k<=diffDay;k++)
			{
				cal.setTime(sqlDate3);
				cal.add(Calendar.DATE,k);
				System.out.println(sqlDate3);
				if(theatercode!=null)
				{
				for(int i=0;i<theatercodei.length;i++)
				{
					if(theatercodei[i]==1&&screencode1i!=null)
					{
					for(int j=0;j<screencode1.length;j++)
					{
					String moviedate = dateFormat.format(cal.getTime());
					NowShowing nowShowing=new NowShowing();
					nowShowing.setMvCode(mvCode);
					nowShowing.setTtCode(1);
					nowShowing.setScreenCode(screencode1i[j]);
					nowShowing.setShowingDay(moviedate);
					int result=nd.insert(nowShowing);
					System.out.println(result);
					}
					}
					else if(theatercodei[i]==2&&screencode2i!=null)
					{
					for(int j=0;j<screencode2.length;j++)
					{
						String moviedate = dateFormat.format(cal.getTime());
					NowShowing nowShowing=new NowShowing();
					nowShowing.setMvCode(mvCode);
					nowShowing.setTtCode(2);
					nowShowing.setScreenCode(screencode2i[j]);
					nowShowing.setShowingDay(moviedate);
					int result=nd.insert(nowShowing);
					System.out.println(result);
					}
					}
					else if(theatercodei[i]==3&&screencode3i!=null)
					{
					for(int j=0;j<screencode3.length;j++)
					{
						String moviedate = dateFormat.format(cal.getTime());
					NowShowing nowShowing=new NowShowing();
					nowShowing.setMvCode(mvCode);
					nowShowing.setTtCode(3);
					nowShowing.setScreenCode(screencode3i[j]);
					nowShowing.setShowingDay(moviedate);
					int result=nd.insert(nowShowing);
					System.out.println(result);
					}
					}
					else if(theatercodei[i]==4&&screencode4i!=null)
					{
					for(int j=0;j<screencode4.length;j++)
					{
						String moviedate = dateFormat.format(cal.getTime());
					NowShowing nowShowing=new NowShowing();
					nowShowing.setMvCode(mvCode);
					nowShowing.setTtCode(4);
					nowShowing.setScreenCode(screencode4i[j]);
					nowShowing.setShowingDay(moviedate);
					int result=nd.insert(nowShowing);
					System.out.println(result);
					}
					}
					
				}
				}
				
			}
			
			System.out.println(sqlDate1);
			movie.setOpenDate(sqlDate1);
			
			
			movie.setMvCode(mvCode);
			movie.setMvTitle(mvTitle);
			movie.setMvTag(mvTag);			
			movie.setMvPrice(mvPrice);
			
			movie.setDirector(director);
			movie.setMajorActor(majorActor);
			movie.setMvInfo(mvInfo);
			movie.setMvContent(mvContent);
			movie.setMvGrade(mvGrade);
			movie.setMovieStar(movieStar);
			movie.setRunningTime(runningTime);
			movie.setGenre(Genre);
			
			/* 임시저장하게 되면 사용할것
			 * // bdSave 세팅 bdSave.setThumbnail(thumbnail); bdSave.setTitle(title);
			 * bdSave.setContent(content);
			 */
		
		} catch (IOException e) {
			System.out.println("에러 : " + e.getMessage());;
		}						
		
		int result = md.insert(movie); 		
		request.setAttribute("result", result);
		
		return "movieWrite";
	}

}
