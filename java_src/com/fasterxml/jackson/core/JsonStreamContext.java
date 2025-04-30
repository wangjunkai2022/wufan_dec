package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.io.CharTypes;
import net.lingala.zip4j.util.e;
/* loaded from: classes2.dex */
public abstract class JsonStreamContext {
    public static final int TYPE_ARRAY = 1;
    public static final int TYPE_OBJECT = 2;
    public static final int TYPE_ROOT = 0;
    protected int _index;
    protected int _type;

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonStreamContext() {
    }

    public final int getCurrentIndex() {
        int i2 = this._index;
        if (i2 < 0) {
            return 0;
        }
        return i2;
    }

    public abstract String getCurrentName();

    public Object getCurrentValue() {
        return null;
    }

    public final int getEntryCount() {
        return this._index + 1;
    }

    public abstract JsonStreamContext getParent();

    public JsonLocation getStartLocation(Object obj) {
        return JsonLocation.NA;
    }

    @Deprecated
    public final String getTypeDesc() {
        int i2 = this._type;
        return i2 != 0 ? i2 != 1 ? i2 != 2 ? "?" : "OBJECT" : "ARRAY" : "ROOT";
    }

    public boolean hasCurrentIndex() {
        return this._index >= 0;
    }

    public boolean hasCurrentName() {
        return getCurrentName() != null;
    }

    public boolean hasPathSegment() {
        int i2 = this._type;
        if (i2 == 2) {
            return hasCurrentName();
        }
        if (i2 == 1) {
            return hasCurrentIndex();
        }
        return false;
    }

    public final boolean inArray() {
        return this._type == 1;
    }

    public final boolean inObject() {
        return this._type == 2;
    }

    public final boolean inRoot() {
        return this._type == 0;
    }

    public JsonPointer pathAsPointer() {
        return JsonPointer.forPath(this, false);
    }

    public void setCurrentValue(Object obj) {
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        int i2 = this._type;
        if (i2 == 0) {
            sb.append(e.F0);
        } else if (i2 != 1) {
            sb.append('{');
            String currentName = getCurrentName();
            if (currentName != null) {
                sb.append('\"');
                CharTypes.appendQuoted(sb, currentName);
                sb.append('\"');
            } else {
                sb.append('?');
            }
            sb.append('}');
        } else {
            sb.append('[');
            sb.append(getCurrentIndex());
            sb.append(']');
        }
        return sb.toString();
    }

    public String typeDesc() {
        int i2 = this._type;
        return i2 != 0 ? i2 != 1 ? i2 != 2 ? "?" : "Object" : "Array" : "root";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonStreamContext(JsonStreamContext jsonStreamContext) {
        this._type = jsonStreamContext._type;
        this._index = jsonStreamContext._index;
    }

    public JsonPointer pathAsPointer(boolean z3) {
        return JsonPointer.forPath(this, z3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonStreamContext(int i2, int i4) {
        this._type = i2;
        this._index = i4;
    }
}
