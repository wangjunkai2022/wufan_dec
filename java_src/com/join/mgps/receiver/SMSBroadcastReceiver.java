package com.join.mgps.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.SmsMessage;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes4.dex */
public class SMSBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static a f51463a = null;

    /* renamed from: b  reason: collision with root package name */
    public static final String f51464b = "android.provider.Telephony.SMS_RECEIVED";

    /* loaded from: classes4.dex */
    public interface a {
        void a(String str);
    }

    public void a(a aVar) {
        f51463a = aVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals(f51464b)) {
            for (Object obj : (Object[]) intent.getExtras().get("pdus")) {
                SmsMessage createFromPdu = SmsMessage.createFromPdu((byte[]) obj);
                createFromPdu.getDisplayOriginatingAddress();
                String displayMessageBody = createFromPdu.getDisplayMessageBody();
                new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(createFromPdu.getTimestampMillis()));
                f51463a.a(displayMessageBody);
            }
        }
    }
}
