package com.bytedance.pangle.d;

import com.bytedance.pangle.c.e;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.f;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
/* loaded from: classes2.dex */
public final class a {
    public static boolean a(String[] strArr) {
        if (strArr.length <= 0) {
            return false;
        }
        try {
            Process exec = Runtime.getRuntime().exec(strArr);
            InputStream errorStream = exec.getErrorStream();
            InputStream inputStream = exec.getInputStream();
            a(errorStream);
            a(inputStream);
            if (exec.waitFor() != 0) {
                ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "exec dex2oat failed : " + strArr.toString());
                return false;
            }
            return true;
        } catch (IOException e4) {
            e4.printStackTrace();
            return false;
        } catch (InterruptedException e5) {
            e5.printStackTrace();
            return false;
        }
    }

    private static void a(final InputStream inputStream) {
        e.f10124a.execute(new Runnable() { // from class: com.bytedance.pangle.d.a.1
            @Override // java.lang.Runnable
            public final void run() {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            return;
                        }
                        ZeusLogger.d(ZeusLogger.TAG_INSTALL, "exec cmd info : ".concat(readLine));
                    } catch (IOException e4) {
                        ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "execCmd consumeInputStream failed : ".concat(String.valueOf(e4)));
                        return;
                    } finally {
                        f.a(bufferedReader);
                    }
                }
            }
        });
    }
}
