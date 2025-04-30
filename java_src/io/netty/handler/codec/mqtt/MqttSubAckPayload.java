package io.netty.handler.codec.mqtt;

import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.StringUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5.dex */
public class MqttSubAckPayload {
    private final List<Integer> grantedQoSLevels;

    public MqttSubAckPayload(int... iArr) {
        ObjectUtil.checkNotNull(iArr, "grantedQoSLevels");
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i2 : iArr) {
            arrayList.add(Integer.valueOf(i2));
        }
        this.grantedQoSLevels = Collections.unmodifiableList(arrayList);
    }

    public List<Integer> grantedQoSLevels() {
        return this.grantedQoSLevels;
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + "[grantedQoSLevels=" + this.grantedQoSLevels + ']';
    }

    public MqttSubAckPayload(Iterable<Integer> iterable) {
        Integer next;
        ObjectUtil.checkNotNull(iterable, "grantedQoSLevels");
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it2 = iterable.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            arrayList.add(next);
        }
        this.grantedQoSLevels = Collections.unmodifiableList(arrayList);
    }
}
