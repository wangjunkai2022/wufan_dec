.class public Lcom/join/mgps/receiver/SMSBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/receiver/SMSBroadcastReceiver$a;
    }
.end annotation


# static fields
.field private static a:Lcom/join/mgps/receiver/SMSBroadcastReceiver$a; = null

.field public static final b:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/receiver/SMSBroadcastReceiver$a;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/join/mgps/receiver/SMSBroadcastReceiver;->a:Lcom/join/mgps/receiver/SMSBroadcastReceiver$a;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "pdus"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 3
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 4
    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v3

    .line 8
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 9
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 11
    sget-object v1, Lcom/join/mgps/receiver/SMSBroadcastReceiver;->a:Lcom/join/mgps/receiver/SMSBroadcastReceiver$a;

    invoke-interface {v1, v2}, Lcom/join/mgps/receiver/SMSBroadcastReceiver$a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
