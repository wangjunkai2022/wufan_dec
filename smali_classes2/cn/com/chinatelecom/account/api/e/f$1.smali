.class final Lcn/com/chinatelecom/account/api/e/f$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/chinatelecom/account/api/e/f;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lcn/com/chinatelecom/account/api/CtAuth;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/f;->a(Landroid/content/Context;)V

    return-void
.end method
