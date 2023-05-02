package com.studywithme.test;

import java.io.File;

public class Test1 {
    public static void main(String[] args) {
        String fileSeparator = System.getProperty("file.separator");
        String absoluteFilePath = fileSeparator+"Users"+fileSeparator+"pankaj"+fileSeparator+"file.txt";
        System.out.println(absoluteFilePath);
    }
}
