package com.android.dx.cf.direct;

import com.android.dx.cf.iface.Attribute;
import com.android.dx.cf.iface.ParseException;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.cf.iface.StdAttributeList;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class AttributeListParser {
    private final AttributeFactory attributeFactory;
    private final DirectClassFile cf;
    private final int context;
    private int endOffset;
    private final StdAttributeList list;
    private ParseObserver observer;
    private final int offset;

    public AttributeListParser(DirectClassFile directClassFile, int i2, int i4, AttributeFactory attributeFactory) {
        Objects.requireNonNull(directClassFile, "cf == null");
        Objects.requireNonNull(attributeFactory, "attributeFactory == null");
        int unsignedShort = directClassFile.getBytes().getUnsignedShort(i4);
        this.cf = directClassFile;
        this.context = i2;
        this.offset = i4;
        this.attributeFactory = attributeFactory;
        this.list = new StdAttributeList(unsignedShort);
        this.endOffset = -1;
    }

    private void parse() {
        int size = this.list.size();
        int i2 = this.offset + 2;
        ByteArray bytes = this.cf.getBytes();
        ParseObserver parseObserver = this.observer;
        if (parseObserver != null) {
            int i4 = this.offset;
            parseObserver.parsed(bytes, i4, 2, "attributes_count: " + Hex.u2(size));
        }
        for (int i5 = 0; i5 < size; i5++) {
            try {
                ParseObserver parseObserver2 = this.observer;
                if (parseObserver2 != null) {
                    parseObserver2.parsed(bytes, i2, 0, "\nattributes[" + i5 + "]:\n");
                    this.observer.changeIndent(1);
                }
                Attribute parse = this.attributeFactory.parse(this.cf, this.context, i2, this.observer);
                i2 += parse.byteLength();
                this.list.set(i5, parse);
                ParseObserver parseObserver3 = this.observer;
                if (parseObserver3 != null) {
                    parseObserver3.changeIndent(-1);
                    ParseObserver parseObserver4 = this.observer;
                    parseObserver4.parsed(bytes, i2, 0, "end attributes[" + i5 + "]\n");
                }
            } catch (ParseException e4) {
                e4.addContext("...while parsing attributes[" + i5 + "]");
                throw e4;
            } catch (RuntimeException e5) {
                ParseException parseException = new ParseException(e5);
                parseException.addContext("...while parsing attributes[" + i5 + "]");
                throw parseException;
            }
        }
        this.endOffset = i2;
    }

    private void parseIfNecessary() {
        if (this.endOffset < 0) {
            parse();
        }
    }

    public int getEndOffset() {
        parseIfNecessary();
        return this.endOffset;
    }

    public StdAttributeList getList() {
        parseIfNecessary();
        return this.list;
    }

    public void setObserver(ParseObserver parseObserver) {
        this.observer = parseObserver;
    }
}
