package com.papa91.battle.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
/* loaded from: classes4.dex */
public interface FrameForwardServerOrBuilder extends MessageLiteOrBuilder {
    String getHost();

    ByteString getHostBytes();

    int getPort();
}
