.class Lcom/join/mgps/activity/MyAccountLoginActivity_$o;
.super Lorg/androidannotations/api/a$c;
.source "MyAccountLoginActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyAccountLoginActivity_;->login(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/join/mgps/activity/MyAccountLoginActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyAccountLoginActivity_;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$o;->f:Lcom/join/mgps/activity/MyAccountLoginActivity_;

    iput p6, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$o;->a:I

    iput-object p7, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$o;->b:Ljava/lang/String;

    iput-object p8, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$o;->c:Ljava/lang/String;

    iput p9, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$o;->d:I

    iput-object p10, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$o;->e:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$o;->f:Lcom/join/mgps/activity/MyAccountLoginActivity_;

    iget v1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$o;->a:I

    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$o;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$o;->c:Ljava/lang/String;

    iget v4, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$o;->d:I

    iget-object v5, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$o;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/activity/MyAccountLoginActivity_;->X0(Lcom/join/mgps/activity/MyAccountLoginActivity_;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
