package io.netty.handler.codec.smtp;

import java.util.List;
/* loaded from: classes5.dex */
public interface SmtpResponse {
    int code();

    List<CharSequence> details();
}
