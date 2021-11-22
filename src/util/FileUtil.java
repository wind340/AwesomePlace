package util;

import java.io.*;

public class FileUtil {

		public static void saveImage(String root, String fname, byte[] data)
		throws IOException {
			
			root += "/images";
			//게시판사진 저장폴더
			File f = new File(root);
			if (!f.exists()) f.mkdir();
			
			f = new File(root + "/" + fname);
			FileOutputStream out = new FileOutputStream(f);
			out.write(data);
			out.close();
		}
		
		public static void saveImage2(String root, String fname, byte[] data)
		throws IOException {
			
			root += "/menus";
			//메뉴사진 저장 폴더
			File f = new File(root);
			if (!f.exists()) f.mkdir();
			
			f = new File(root + "/" + fname);
			FileOutputStream out = new FileOutputStream(f);
			out.write(data);
			out.close();
		}
		
}