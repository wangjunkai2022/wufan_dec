package com.android.dx.command.dump;

import com.android.dex.util.FileUtils;
import com.android.dx.cf.iface.ParseException;
import com.android.dx.util.HexParser;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
/* loaded from: classes2.dex */
public class Main {
    private final Args parsedArgs = new Args();

    private Main() {
    }

    public static void main(String[] strArr) {
        new Main().run(strArr);
    }

    private void processOne(String str, byte[] bArr) {
        Args args = this.parsedArgs;
        if (args.dotDump) {
            DotDumper.dump(bArr, str, args);
        } else if (args.basicBlocks) {
            BlockDumper.dump(bArr, System.out, str, false, args);
        } else if (args.ropBlocks) {
            BlockDumper.dump(bArr, System.out, str, true, args);
        } else if (args.ssaBlocks) {
            args.optimize = false;
            SsaDumper.dump(bArr, System.out, str, args);
        } else {
            ClassDumper.dump(bArr, System.out, str, args);
        }
    }

    private void run(String[] strArr) {
        int i2 = 0;
        while (i2 < strArr.length) {
            String str = strArr[i2];
            if (str.equals("--") || !str.startsWith("--")) {
                break;
            }
            if (str.equals("--bytes")) {
                this.parsedArgs.rawBytes = true;
            } else if (str.equals("--basic-blocks")) {
                this.parsedArgs.basicBlocks = true;
            } else if (str.equals("--rop-blocks")) {
                this.parsedArgs.ropBlocks = true;
            } else if (str.equals("--optimize")) {
                this.parsedArgs.optimize = true;
            } else if (str.equals("--ssa-blocks")) {
                this.parsedArgs.ssaBlocks = true;
            } else if (str.startsWith("--ssa-step=")) {
                this.parsedArgs.ssaStep = str.substring(str.indexOf(61) + 1);
            } else if (str.equals("--debug")) {
                this.parsedArgs.debug = true;
            } else if (str.equals("--dot")) {
                this.parsedArgs.dotDump = true;
            } else if (str.equals("--strict")) {
                this.parsedArgs.strictParse = true;
            } else if (str.startsWith("--width=")) {
                String substring = str.substring(str.indexOf(61) + 1);
                this.parsedArgs.width = Integer.parseInt(substring);
            } else if (str.startsWith("--method=")) {
                this.parsedArgs.method = str.substring(str.indexOf(61) + 1);
            } else {
                PrintStream printStream = System.err;
                printStream.println("unknown option: " + str);
                throw new RuntimeException("usage");
            }
            i2++;
        }
        if (i2 != strArr.length) {
            while (i2 < strArr.length) {
                try {
                    String str2 = strArr[i2];
                    PrintStream printStream2 = System.out;
                    printStream2.println("reading " + str2 + "...");
                    byte[] readFile = FileUtils.readFile(str2);
                    if (!str2.endsWith(".class")) {
                        try {
                            readFile = HexParser.parse(new String(readFile, "utf-8"));
                        } catch (UnsupportedEncodingException e4) {
                            throw new RuntimeException("shouldn't happen", e4);
                            break;
                        }
                    }
                    processOne(str2, readFile);
                } catch (ParseException e5) {
                    System.err.println("\ntrouble parsing:");
                    if (this.parsedArgs.debug) {
                        e5.printStackTrace();
                    } else {
                        e5.printContext(System.err);
                    }
                }
                i2++;
            }
            return;
        }
        System.err.println("no input files specified");
        throw new RuntimeException("usage");
    }
}
