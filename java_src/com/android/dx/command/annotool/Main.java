package com.android.dx.command.annotool;

import external.org.apache.commons.lang3.d;
import java.lang.annotation.ElementType;
import java.util.EnumSet;
import java.util.Locale;
/* loaded from: classes2.dex */
public class Main {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class Arguments {
        String aclass;
        String[] files;
        EnumSet<ElementType> eTypes = EnumSet.noneOf(ElementType.class);
        EnumSet<PrintType> printTypes = EnumSet.noneOf(PrintType.class);

        Arguments() {
        }

        void parse(String[] strArr) throws InvalidArgumentException {
            int i2 = 0;
            while (true) {
                if (i2 >= strArr.length) {
                    break;
                }
                String str = strArr[i2];
                if (str.startsWith("--annotation=")) {
                    String substring = str.substring(str.indexOf(61) + 1);
                    if (this.aclass == null) {
                        this.aclass = substring.replace(d.f65364a, '/');
                    } else {
                        throw new InvalidArgumentException("--annotation can only be specified once.");
                    }
                } else if (str.startsWith("--element=")) {
                    try {
                        for (String str2 : str.substring(str.indexOf(61) + 1).split(",")) {
                            this.eTypes.add(ElementType.valueOf(str2.toUpperCase(Locale.ROOT)));
                        }
                    } catch (IllegalArgumentException unused) {
                        throw new InvalidArgumentException("invalid --element");
                    }
                } else if (str.startsWith("--print=")) {
                    try {
                        for (String str3 : str.substring(str.indexOf(61) + 1).split(",")) {
                            this.printTypes.add(PrintType.valueOf(str3.toUpperCase(Locale.ROOT)));
                        }
                    } catch (IllegalArgumentException unused2) {
                        throw new InvalidArgumentException("invalid --print");
                    }
                } else {
                    String[] strArr2 = new String[strArr.length - i2];
                    this.files = strArr2;
                    System.arraycopy(strArr, i2, strArr2, 0, strArr2.length);
                    break;
                }
                i2++;
            }
            if (this.aclass != null) {
                if (this.printTypes.isEmpty()) {
                    this.printTypes.add(PrintType.CLASS);
                }
                if (this.eTypes.isEmpty()) {
                    this.eTypes.add(ElementType.TYPE);
                }
                EnumSet<ElementType> clone = this.eTypes.clone();
                clone.remove(ElementType.TYPE);
                clone.remove(ElementType.PACKAGE);
                if (!clone.isEmpty()) {
                    throw new InvalidArgumentException("only --element parameters 'type' and 'package' supported");
                }
                return;
            }
            throw new InvalidArgumentException("--annotation must be specified");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class InvalidArgumentException extends Exception {
        InvalidArgumentException() {
        }

        InvalidArgumentException(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public enum PrintType {
        CLASS,
        INNERCLASS,
        METHOD,
        PACKAGE
    }

    private Main() {
    }

    public static void main(String[] strArr) {
        Arguments arguments = new Arguments();
        try {
            arguments.parse(strArr);
            new AnnotationLister(arguments).process();
        } catch (InvalidArgumentException e4) {
            System.err.println(e4.getMessage());
            throw new RuntimeException("usage");
        }
    }
}
