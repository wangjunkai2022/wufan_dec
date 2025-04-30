package com.papa91.battle.protocol;

import com.google.protobuf.MessageLiteOrBuilder;
import com.papa91.battle.protocol.Request;
/* loaded from: classes4.dex */
public interface RequestOrBuilder extends MessageLiteOrBuilder {
    Account getAccount();

    Params getParams();

    long getRequestId();

    Request.ProtoType getType();

    int getTypeValue();

    int getVersion();

    boolean hasAccount();

    boolean hasParams();
}
