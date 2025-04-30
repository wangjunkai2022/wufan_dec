package com.fasterxml.jackson.core.util;

import io.netty.util.internal.StringUtil;
import java.io.Serializable;
/* loaded from: classes2.dex */
public class Separators implements Serializable {
    private static final long serialVersionUID = 1;
    private final char arrayValueSeparator;
    private final char objectEntrySeparator;
    private final char objectFieldValueSeparator;

    public Separators() {
        this(':', StringUtil.COMMA, StringUtil.COMMA);
    }

    public static Separators createDefaultInstance() {
        return new Separators();
    }

    public char getArrayValueSeparator() {
        return this.arrayValueSeparator;
    }

    public char getObjectEntrySeparator() {
        return this.objectEntrySeparator;
    }

    public char getObjectFieldValueSeparator() {
        return this.objectFieldValueSeparator;
    }

    public Separators withArrayValueSeparator(char c4) {
        return this.arrayValueSeparator == c4 ? this : new Separators(this.objectFieldValueSeparator, this.objectEntrySeparator, c4);
    }

    public Separators withObjectEntrySeparator(char c4) {
        return this.objectEntrySeparator == c4 ? this : new Separators(this.objectFieldValueSeparator, c4, this.arrayValueSeparator);
    }

    public Separators withObjectFieldValueSeparator(char c4) {
        return this.objectFieldValueSeparator == c4 ? this : new Separators(c4, this.objectEntrySeparator, this.arrayValueSeparator);
    }

    public Separators(char c4, char c5, char c6) {
        this.objectFieldValueSeparator = c4;
        this.objectEntrySeparator = c5;
        this.arrayValueSeparator = c6;
    }
}
