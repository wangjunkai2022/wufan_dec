package org.jsoup.parser;

import java.util.ArrayList;
/* loaded from: classes5.dex */
class ParseErrorList extends ArrayList<ParseError> {
    private static final int INITIAL_CAPACITY = 16;
    private final int maxSize;

    ParseErrorList(int i2, int i4) {
        super(i2);
        this.maxSize = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ParseErrorList noTracking() {
        return new ParseErrorList(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ParseErrorList tracking(int i2) {
        return new ParseErrorList(16, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean canAddError() {
        return size() < this.maxSize;
    }

    int getMaxSize() {
        return this.maxSize;
    }
}
