package com.android.dx.cf.direct;

import com.android.dx.cf.attrib.RawAttribute;
import com.android.dx.cf.iface.Attribute;
import com.android.dx.cf.iface.ParseException;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.rop.cst.ConstantPool;
import com.android.dx.rop.cst.CstString;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import java.util.Objects;
/* loaded from: classes2.dex */
public class AttributeFactory {
    public static final int CTX_CLASS = 0;
    public static final int CTX_CODE = 3;
    public static final int CTX_COUNT = 4;
    public static final int CTX_FIELD = 1;
    public static final int CTX_METHOD = 2;

    public final Attribute parse(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        String str;
        Objects.requireNonNull(directClassFile, "cf == null");
        if (i2 >= 0 && i2 < 4) {
            CstString cstString = null;
            try {
                ByteArray bytes = directClassFile.getBytes();
                ConstantPool constantPool = directClassFile.getConstantPool();
                int unsignedShort = bytes.getUnsignedShort(i4);
                int i5 = i4 + 2;
                int i6 = bytes.getInt(i5);
                CstString cstString2 = (CstString) constantPool.get(unsignedShort);
                if (parseObserver != null) {
                    try {
                        parseObserver.parsed(bytes, i4, 2, "name: " + cstString2.toHuman());
                        parseObserver.parsed(bytes, i5, 4, "length: " + Hex.u4(i6));
                    } catch (ParseException e4) {
                        e = e4;
                        cstString = cstString2;
                        StringBuilder sb = new StringBuilder();
                        sb.append("...while parsing ");
                        if (cstString != null) {
                            str = cstString.toHuman() + " ";
                        } else {
                            str = "";
                        }
                        sb.append(str);
                        sb.append("attribute at offset ");
                        sb.append(Hex.u4(i4));
                        e.addContext(sb.toString());
                        throw e;
                    }
                }
                return parse0(directClassFile, i2, cstString2.getString(), i4 + 6, i6, parseObserver);
            } catch (ParseException e5) {
                e = e5;
            }
        } else {
            throw new IllegalArgumentException("bad context");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Attribute parse0(DirectClassFile directClassFile, int i2, String str, int i4, int i5, ParseObserver parseObserver) {
        ByteArray bytes = directClassFile.getBytes();
        RawAttribute rawAttribute = new RawAttribute(str, bytes, i4, i5, directClassFile.getConstantPool());
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i4, i5, "attribute data");
        }
        return rawAttribute;
    }
}
