.class Lcom/join/mgps/activity/SplashActivity$a;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SplashActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->a(Lcom/join/mgps/activity/SplashActivity;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SplashActivity;->g:Landroid/widget/TextView;

    const-string v4, "\u8df3\u8fc7"

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SplashActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    iget v4, p1, Lcom/join/mgps/activity/SplashActivity;->u:I

    if-le v4, v0, :cond_6

    sub-int/2addr v4, v0

    .line 6
    iput v4, p1, Lcom/join/mgps/activity/SplashActivity;->u:I

    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->c(Lcom/join/mgps/activity/SplashActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->c(Lcom/join/mgps/activity/SplashActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->d(Lcom/join/mgps/activity/SplashActivity;)Lcom/join/mgps/dto/FirstIntentData;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->d(Lcom/join/mgps/activity/SplashActivity;)Lcom/join/mgps/dto/FirstIntentData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/FirstIntentData;->isCustomApk()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->d(Lcom/join/mgps/activity/SplashActivity;)Lcom/join/mgps/dto/FirstIntentData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/FirstIntentData;->isIntent()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->d(Lcom/join/mgps/activity/SplashActivity;)Lcom/join/mgps/dto/FirstIntentData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/FirstIntentData;->getIntentDateBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    const-string v0, "splash"

    .line 10
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setFrom(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/SplashActivity;->d(Lcom/join/mgps/activity/SplashActivity;)Lcom/join/mgps/dto/FirstIntentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/FirstIntentData;->isAutoDownload()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->d(Lcom/join/mgps/activity/SplashActivity;)Lcom/join/mgps/dto/FirstIntentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/FirstIntentData;->getIntentDateBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/SplashActivity;->A(Lcom/join/mgps/Util/IntentDateBean;)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/SplashActivity;->z()V

    goto :goto_0

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->a(Lcom/join/mgps/activity/SplashActivity;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SplashActivity;->g:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8df3\u8fc7("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    iget v6, v6, Lcom/join/mgps/activity/SplashActivity;->u:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "S)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SplashActivity;->h:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    iget v5, v5, Lcom/join/mgps/activity/SplashActivity;->u:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    iget v4, p1, Lcom/join/mgps/activity/SplashActivity;->u:I

    if-le v4, v0, :cond_6

    sub-int/2addr v4, v0

    .line 19
    iput v4, p1, Lcom/join/mgps/activity/SplashActivity;->u:I

    .line 20
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->c(Lcom/join/mgps/activity/SplashActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->c(Lcom/join/mgps/activity/SplashActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->a(Lcom/join/mgps/activity/SplashActivity;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$a;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/SplashActivity;->z()V

    :cond_6
    :goto_0
    return-void
.end method
