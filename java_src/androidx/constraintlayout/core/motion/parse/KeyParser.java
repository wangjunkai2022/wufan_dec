package androidx.constraintlayout.core.motion.parse;

import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLKey;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLParser;
import androidx.constraintlayout.core.parser.CLParsingException;
import java.io.PrintStream;
/* loaded from: classes.dex */
public class KeyParser {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface DataType {
        int get(int i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface Ids {
        int get(String str);
    }

    private static TypedBundle a(String str, Ids ids, DataType dataType) {
        TypedBundle typedBundle = new TypedBundle();
        try {
            CLObject parse = CLParser.parse(str);
            int size = parse.size();
            for (int i2 = 0; i2 < size; i2++) {
                CLKey cLKey = (CLKey) parse.get(i2);
                String content = cLKey.content();
                CLElement value = cLKey.getValue();
                int i4 = ids.get(content);
                if (i4 == -1) {
                    PrintStream printStream = System.err;
                    printStream.println("unknown type " + content);
                } else {
                    int i5 = dataType.get(i4);
                    if (i5 == 1) {
                        typedBundle.add(i4, parse.getBoolean(i2));
                    } else if (i5 == 2) {
                        typedBundle.add(i4, value.getInt());
                        PrintStream printStream2 = System.out;
                        printStream2.println("parse " + content + " INT_MASK > " + value.getInt());
                    } else if (i5 == 4) {
                        typedBundle.add(i4, value.getFloat());
                        PrintStream printStream3 = System.out;
                        printStream3.println("parse " + content + " FLOAT_MASK > " + value.getFloat());
                    } else if (i5 == 8) {
                        typedBundle.add(i4, value.content());
                        PrintStream printStream4 = System.out;
                        printStream4.println("parse " + content + " STRING_MASK > " + value.content());
                    }
                }
            }
        } catch (CLParsingException e4) {
            e4.printStackTrace();
        }
        return typedBundle;
    }

    public static void main(String[] strArr) {
        parseAttributes("{frame:22,\ntarget:'widget1',\neasing:'easeIn',\ncurveFit:'spline',\nprogress:0.3,\nalpha:0.2,\nelevation:0.7,\nrotationZ:23,\nrotationX:25.0,\nrotationY:27.0,\npivotX:15,\npivotY:17,\npivotTarget:'32',\npathRotate:23,\nscaleX:0.5,\nscaleY:0.7,\ntranslationX:5,\ntranslationY:7,\ntranslationZ:11,\n}");
    }

    public static TypedBundle parseAttributes(String str) {
        return a(str, new Ids() { // from class: androidx.constraintlayout.core.motion.parse.b
            @Override // androidx.constraintlayout.core.motion.parse.KeyParser.Ids
            public final int get(String str2) {
                return androidx.constraintlayout.core.motion.utils.a.a(str2);
            }
        }, new DataType() { // from class: androidx.constraintlayout.core.motion.parse.a
            @Override // androidx.constraintlayout.core.motion.parse.KeyParser.DataType
            public final int get(int i2) {
                return androidx.constraintlayout.core.motion.utils.a.b(i2);
            }
        });
    }
}
