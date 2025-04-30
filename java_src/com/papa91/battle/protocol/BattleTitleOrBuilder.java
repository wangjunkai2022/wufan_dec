package com.papa91.battle.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;
/* loaded from: classes4.dex */
public interface BattleTitleOrBuilder extends MessageLiteOrBuilder {
    String getBackgroudColor();

    ByteString getBackgroudColorBytes();

    String getTitle();

    ByteString getTitleBytes();
}
