package io.netty.handler.codec.dns;

import io.netty.util.AbstractReferenceCounted;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.ReferenceCounted;
import io.netty.util.ResourceLeakDetector;
import io.netty.util.ResourceLeakDetectorFactory;
import io.netty.util.ResourceLeakTracker;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.StringUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.UShort;
/* loaded from: classes5.dex */
public abstract class AbstractDnsMessage extends AbstractReferenceCounted implements DnsMessage {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int SECTION_COUNT = 4;
    private Object additionals;
    private Object answers;
    private Object authorities;
    private short id;
    private final ResourceLeakTracker<DnsMessage> leak;
    private DnsOpCode opCode;
    private Object questions;
    private boolean recursionDesired;

    /* renamed from: z  reason: collision with root package name */
    private byte f65751z;
    private static final ResourceLeakDetector<DnsMessage> leakDetector = ResourceLeakDetectorFactory.instance().newResourceLeakDetector(DnsMessage.class);
    private static final int SECTION_QUESTION = DnsSection.QUESTION.ordinal();

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractDnsMessage(int i2) {
        this(i2, DnsOpCode.QUERY);
    }

    private static <T extends DnsRecord> T castRecord(Object obj) {
        return (T) obj;
    }

    private static DnsRecord checkQuestion(int i2, DnsRecord dnsRecord) {
        if (i2 != SECTION_QUESTION || (ObjectUtil.checkNotNull(dnsRecord, "record") instanceof DnsQuestion)) {
            return dnsRecord;
        }
        throw new IllegalArgumentException("record: " + dnsRecord + " (expected: " + StringUtil.simpleClassName((Class<?>) DnsQuestion.class) + ')');
    }

    private static ArrayList<DnsRecord> newRecordList() {
        return new ArrayList<>(2);
    }

    private Object sectionAt(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        return this.additionals;
                    }
                    throw new Error();
                }
                return this.authorities;
            }
            return this.answers;
        }
        return this.questions;
    }

    private static int sectionOrdinal(DnsSection dnsSection) {
        return ((DnsSection) ObjectUtil.checkNotNull(dnsSection, "section")).ordinal();
    }

    private void setSection(int i2, Object obj) {
        if (i2 == 0) {
            this.questions = obj;
        } else if (i2 == 1) {
            this.answers = obj;
        } else if (i2 == 2) {
            this.authorities = obj;
        } else if (i2 == 3) {
            this.additionals = obj;
        } else {
            throw new Error();
        }
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public DnsMessage addRecord(DnsSection dnsSection, DnsRecord dnsRecord) {
        addRecord(sectionOrdinal(dnsSection), dnsRecord);
        return this;
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public DnsMessage clear(DnsSection dnsSection) {
        clear(sectionOrdinal(dnsSection));
        return this;
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public int count(DnsSection dnsSection) {
        return count(sectionOrdinal(dnsSection));
    }

    @Override // io.netty.util.AbstractReferenceCounted
    protected void deallocate() {
        clear();
        ResourceLeakTracker<DnsMessage> resourceLeakTracker = this.leak;
        if (resourceLeakTracker != null) {
            resourceLeakTracker.close(this);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DnsMessage) {
            DnsMessage dnsMessage = (DnsMessage) obj;
            if (id() != dnsMessage.id()) {
                return false;
            }
            if (this instanceof DnsQuery) {
                if (!(dnsMessage instanceof DnsQuery)) {
                    return false;
                }
            } else if (dnsMessage instanceof DnsQuery) {
                return false;
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (id() * 31) + (!(this instanceof DnsQuery) ? 1 : 0);
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public int id() {
        return this.id & UShort.MAX_VALUE;
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public boolean isRecursionDesired() {
        return this.recursionDesired;
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public DnsOpCode opCode() {
        return this.opCode;
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public <T extends DnsRecord> T recordAt(DnsSection dnsSection) {
        return (T) recordAt(sectionOrdinal(dnsSection));
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public <T extends DnsRecord> T removeRecord(DnsSection dnsSection, int i2) {
        return (T) removeRecord(sectionOrdinal(dnsSection), i2);
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public DnsMessage setId(int i2) {
        this.id = (short) i2;
        return this;
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public DnsMessage setOpCode(DnsOpCode dnsOpCode) {
        this.opCode = (DnsOpCode) ObjectUtil.checkNotNull(dnsOpCode, "opCode");
        return this;
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public DnsMessage setRecord(DnsSection dnsSection, DnsRecord dnsRecord) {
        setRecord(sectionOrdinal(dnsSection), dnsRecord);
        return this;
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public DnsMessage setRecursionDesired(boolean z3) {
        this.recursionDesired = z3;
        return this;
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public DnsMessage setZ(int i2) {
        this.f65751z = (byte) (i2 & 7);
        return this;
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public int z() {
        return this.f65751z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractDnsMessage(int i2, DnsOpCode dnsOpCode) {
        this.leak = leakDetector.track(this);
        setId(i2);
        setOpCode(dnsOpCode);
    }

    private void addRecord(int i2, DnsRecord dnsRecord) {
        checkQuestion(i2, dnsRecord);
        Object sectionAt = sectionAt(i2);
        if (sectionAt == null) {
            setSection(i2, dnsRecord);
        } else if (sectionAt instanceof DnsRecord) {
            ArrayList<DnsRecord> newRecordList = newRecordList();
            newRecordList.add(castRecord(sectionAt));
            newRecordList.add(dnsRecord);
            setSection(i2, newRecordList);
        } else {
            ((List) sectionAt).add(dnsRecord);
        }
    }

    private int count(int i2) {
        Object sectionAt = sectionAt(i2);
        if (sectionAt == null) {
            return 0;
        }
        if (sectionAt instanceof DnsRecord) {
            return 1;
        }
        return ((List) sectionAt).size();
    }

    private <T extends DnsRecord> T recordAt(int i2) {
        Object sectionAt = sectionAt(i2);
        if (sectionAt == null) {
            return null;
        }
        if (sectionAt instanceof DnsRecord) {
            return (T) castRecord(sectionAt);
        }
        List list = (List) sectionAt;
        if (list.isEmpty()) {
            return null;
        }
        return (T) castRecord(list.get(0));
    }

    private <T extends DnsRecord> T removeRecord(int i2, int i4) {
        Object sectionAt = sectionAt(i2);
        if (sectionAt != null) {
            if (sectionAt instanceof DnsRecord) {
                if (i4 == 0) {
                    T t3 = (T) castRecord(sectionAt);
                    setSection(i2, null);
                    return t3;
                }
                throw new IndexOutOfBoundsException("index: " + i4 + " (expected: 0)");
            }
            return (T) castRecord(((List) sectionAt).remove(i4));
        }
        throw new IndexOutOfBoundsException("index: " + i4 + " (expected: none)");
    }

    private void setRecord(int i2, DnsRecord dnsRecord) {
        clear(i2);
        setSection(i2, checkQuestion(i2, dnsRecord));
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public DnsMessage clear() {
        for (int i2 = 0; i2 < 4; i2++) {
            clear(i2);
        }
        return this;
    }

    private void clear(int i2) {
        Object sectionAt = sectionAt(i2);
        setSection(i2, null);
        if (sectionAt instanceof ReferenceCounted) {
            ((ReferenceCounted) sectionAt).release();
        } else if (sectionAt instanceof List) {
            List<Object> list = (List) sectionAt;
            if (list.isEmpty()) {
                return;
            }
            for (Object obj : list) {
                ReferenceCountUtil.release(obj);
            }
        }
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public DnsMessage retain() {
        return (DnsMessage) super.retain();
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public DnsMessage touch() {
        return (DnsMessage) super.touch();
    }

    @Override // io.netty.util.AbstractReferenceCounted, io.netty.util.ReferenceCounted
    public DnsMessage retain(int i2) {
        return (DnsMessage) super.retain(i2);
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public <T extends DnsRecord> T setRecord(DnsSection dnsSection, int i2, DnsRecord dnsRecord) {
        return (T) setRecord(sectionOrdinal(dnsSection), i2, dnsRecord);
    }

    @Override // io.netty.util.ReferenceCounted
    public DnsMessage touch(Object obj) {
        ResourceLeakTracker<DnsMessage> resourceLeakTracker = this.leak;
        if (resourceLeakTracker != null) {
            resourceLeakTracker.record(obj);
        }
        return this;
    }

    private <T extends DnsRecord> T setRecord(int i2, int i4, DnsRecord dnsRecord) {
        checkQuestion(i2, dnsRecord);
        Object sectionAt = sectionAt(i2);
        if (sectionAt != null) {
            if (sectionAt instanceof DnsRecord) {
                if (i4 == 0) {
                    setSection(i2, dnsRecord);
                    return (T) castRecord(sectionAt);
                }
                throw new IndexOutOfBoundsException("index: " + i4 + " (expected: 0)");
            }
            return (T) castRecord(((List) sectionAt).set(i4, dnsRecord));
        }
        throw new IndexOutOfBoundsException("index: " + i4 + " (expected: none)");
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public int count() {
        int i2 = 0;
        for (int i4 = 0; i4 < 4; i4++) {
            i2 += count(i4);
        }
        return i2;
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public <T extends DnsRecord> T recordAt(DnsSection dnsSection, int i2) {
        return (T) recordAt(sectionOrdinal(dnsSection), i2);
    }

    private <T extends DnsRecord> T recordAt(int i2, int i4) {
        Object sectionAt = sectionAt(i2);
        if (sectionAt != null) {
            if (sectionAt instanceof DnsRecord) {
                if (i4 == 0) {
                    return (T) castRecord(sectionAt);
                }
                throw new IndexOutOfBoundsException("index: " + i4 + "' (expected: 0)");
            }
            return (T) castRecord(((List) sectionAt).get(i4));
        }
        throw new IndexOutOfBoundsException("index: " + i4 + " (expected: none)");
    }

    @Override // io.netty.handler.codec.dns.DnsMessage
    public DnsMessage addRecord(DnsSection dnsSection, int i2, DnsRecord dnsRecord) {
        addRecord(sectionOrdinal(dnsSection), i2, dnsRecord);
        return this;
    }

    private void addRecord(int i2, int i4, DnsRecord dnsRecord) {
        ArrayList<DnsRecord> newRecordList;
        checkQuestion(i2, dnsRecord);
        Object sectionAt = sectionAt(i2);
        if (sectionAt == null) {
            if (i4 == 0) {
                setSection(i2, dnsRecord);
                return;
            }
            throw new IndexOutOfBoundsException("index: " + i4 + " (expected: 0)");
        } else if (sectionAt instanceof DnsRecord) {
            if (i4 == 0) {
                newRecordList = newRecordList();
                newRecordList.add(dnsRecord);
                newRecordList.add(castRecord(sectionAt));
            } else if (i4 == 1) {
                newRecordList = newRecordList();
                newRecordList.add(castRecord(sectionAt));
                newRecordList.add(dnsRecord);
            } else {
                throw new IndexOutOfBoundsException("index: " + i4 + " (expected: 0 or 1)");
            }
            setSection(i2, newRecordList);
        } else {
            ((List) sectionAt).add(i4, dnsRecord);
        }
    }
}
