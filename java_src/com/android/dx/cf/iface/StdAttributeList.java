package com.android.dx.cf.iface;

import com.android.dx.util.FixedSizeList;
/* loaded from: classes2.dex */
public final class StdAttributeList extends FixedSizeList implements AttributeList {
    public StdAttributeList(int i2) {
        super(i2);
    }

    @Override // com.android.dx.cf.iface.AttributeList
    public int byteLength() {
        int size = size();
        int i2 = 2;
        for (int i4 = 0; i4 < size; i4++) {
            i2 += get(i4).byteLength();
        }
        return i2;
    }

    @Override // com.android.dx.cf.iface.AttributeList
    public Attribute findFirst(String str) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            Attribute attribute = get(i2);
            if (attribute.getName().equals(str)) {
                return attribute;
            }
        }
        return null;
    }

    @Override // com.android.dx.cf.iface.AttributeList
    public Attribute findNext(Attribute attribute) {
        Attribute attribute2;
        int size = size();
        int i2 = 0;
        while (i2 < size) {
            if (get(i2) == attribute) {
                String name = attribute.getName();
                do {
                    i2++;
                    if (i2 >= size) {
                        return null;
                    }
                    attribute2 = get(i2);
                } while (!attribute2.getName().equals(name));
                return attribute2;
            }
            i2++;
        }
        return null;
    }

    @Override // com.android.dx.cf.iface.AttributeList
    public Attribute get(int i2) {
        return (Attribute) get0(i2);
    }

    public void set(int i2, Attribute attribute) {
        set0(i2, attribute);
    }
}
