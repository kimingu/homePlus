package com.kh.homeplus.master.model.vo;

import java.sql.Date;

public class Board {
   private String b_code; // 게시글 번호
   private String m_code; // 유저코드 
   private String b_title; // 글 제목
   private String b_content; // 글 내용 
   private int b_count; // 글 조회수
   private char b_status; // 게시글 삭제 여부 
   private String b_name; // 게시판 분류(커뮤니티,공지사항,이벤트 등) 
   private Date b_create_date; // 게시글 작성일 
   private Date b_mdify_date; // 게시글  수정일 
   private String orignal_filename; // 첨부파일 원래 이름 
   private String rename_filename; // 첨부파일 파일 변경 이름 
   private int b_category; // 게시판 말머리(잡담,질문 등)
   
   public Board() {}

   public Board(String b_code, String m_code, String b_title, String b_content, int b_count, char b_status, String b_name,
         Date b_create_date, Date b_mdify_date, String orignal_filename, String rename_filename, int b_category) {
      super();
      this.b_code = b_code;
      this.m_code = m_code;
      this.b_title = b_title;
      this.b_content = b_content;
      this.b_count = b_count;
      this.b_status = b_status;
      this.b_name = b_name;
      this.b_create_date = b_create_date;
      this.b_mdify_date = b_mdify_date;
      this.orignal_filename = orignal_filename;
      this.rename_filename = rename_filename;
      this.b_category = b_category;
   }

   public String getB_code() {
      return b_code;
   }

   public void setB_code(String b_code) {
      this.b_code = b_code;
   }

   public String getM_code() {
      return m_code;
   }

   public void setM_code(String m_code) {
      this.m_code = m_code;
   }

   public String getB_title() {
      return b_title;
   }

   public void setB_title(String b_title) {
      this.b_title = b_title;
   }

   public String getB_content() {
      return b_content;
   }

   public void setB_content(String b_content) {
      this.b_content = b_content;
   }

   public int getB_count() {
      return b_count;
   }

   public void setB_count(int b_count) {
      this.b_count = b_count;
   }

   public char getB_status() {
      return b_status;
   }

   public void setB_status(char b_status) {
      this.b_status = b_status;
   }

   public String getB_name() {
      return b_name;
   }

   public void setB_name(String b_name) {
      this.b_name = b_name;
   }

   public Date getB_create_date() {
      return b_create_date;
   }

   public void setB_create_date(Date b_create_date) {
      this.b_create_date = b_create_date;
   }

   public Date getB_mdify_date() {
      return b_mdify_date;
   }

   public void setB_mdify_date(Date b_mdify_date) {
      this.b_mdify_date = b_mdify_date;
   }

   public String getOrignal_filename() {
      return orignal_filename;
   }

   public void setOrignal_filename(String orignal_filename) {
      this.orignal_filename = orignal_filename;
   }

   public String getRename_filename() {
      return rename_filename;
   }

   public void setRename_filename(String rename_filename) {
      this.rename_filename = rename_filename;
   }

   public int getB_category() {
      return b_category;
   }

   public void setB_category(int b_category) {
      this.b_category = b_category;
   }

   @Override
   public String toString() {
      return "Board [b_code=" + b_code + ", m_code=" + m_code + ", b_title=" + b_title + ", b_content=" + b_content
            + ", b_count=" + b_count + ", b_status=" + b_status + ", b_name=" + b_name + ", b_create_date="
            + b_create_date + ", b_mdify_date=" + b_mdify_date + ", orignal_filename=" + orignal_filename
            + ", rename_filename=" + rename_filename + ", b_category=" + b_category + "]";
   }
   
   
   
}