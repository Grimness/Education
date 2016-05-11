package com.business.utils;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.imageio.ImageIO;

public class Transform {

	private static String[] weeks = { "日", "一", "二", "三", "四", "五", "六" };
	private static int[] weeknumber = { 0, 1, 2, 3, 4, 5, 6 };

	public static String transWeek(int week) {
		String weekname = "";
		if (week < 0 || week > 6) {
			return "输入错误";
		}
		for (int w : weeknumber) {
			if (w == week) {
				weekname = "星期" + weeks[w];
			}
		}

		return weekname;
	}

	//图片压缩
	public static void resizeImage(InputStream is, OutputStream os, int sizeW,
			int sizeH, String format) throws IOException {
		BufferedImage prevImage = ImageIO.read(is);
		double width = prevImage.getWidth();
		double height = prevImage.getHeight();
		double percentW = sizeW / width;
		double percentH = sizeH / height;
		int newWidth = (int) (width * percentW);
		int newHeight = (int) (height * percentH);
		BufferedImage image = new BufferedImage(newWidth, newHeight,
				BufferedImage.TYPE_INT_BGR);
		Graphics graphics = image.createGraphics();
		graphics.drawImage(prevImage, 0, 0, newWidth, newHeight, null);
		ImageIO.write(image, format, os);
	}

	public static String changeCharset(String str) throws Exception {
		if (str != null) {
			
			// 用新的字符编码生成字符串
			return new String(str.getBytes("ISO-8859-1"), "UTF-8");
		}
		return null;
	}

}
