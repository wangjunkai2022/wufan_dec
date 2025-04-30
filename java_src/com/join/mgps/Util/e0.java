package com.join.mgps.Util;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
/* compiled from: ExecTerminal.java */
/* loaded from: classes3.dex */
public class e0 {

    /* renamed from: a  reason: collision with root package name */
    public static final String f27516a = "ExecTerminal";

    public static String a(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("^ Executing '");
        sb.append(str);
        sb.append("'");
        try {
            try {
                Process exec = Runtime.getRuntime().exec(com.xinzhu.overmind.utils.t.f64783b);
                DataInputStream dataInputStream = new DataInputStream(exec.getInputStream());
                DataOutputStream dataOutputStream = new DataOutputStream(exec.getOutputStream());
                dataOutputStream.writeBytes(str + "\n");
                dataOutputStream.writeBytes(com.xinzhu.overmind.utils.t.f64784c);
                dataOutputStream.flush();
                dataOutputStream.close();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(dataInputStream));
                String str2 = "";
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            return str2;
                        }
                        str2 = str2 + readLine + "\n";
                    } catch (IOException e4) {
                        e4.printStackTrace();
                        exec.waitFor();
                        return "";
                    }
                }
            } catch (IOException e5) {
                e5.printStackTrace();
            }
        } catch (InterruptedException e6) {
            e6.printStackTrace();
        }
    }
}
