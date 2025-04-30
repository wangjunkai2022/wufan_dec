.class Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$n;
.super Ljava/lang/Object;
.source "MyAccountChangePhoneActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$n;->b:Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$n;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$n;->b:Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$n;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;->U0(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;Ljava/lang/String;)V

    return-void
.end method
