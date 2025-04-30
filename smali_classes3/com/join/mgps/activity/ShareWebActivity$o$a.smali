.class Lcom/join/mgps/activity/ShareWebActivity$o$a;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$o;->shareToOne(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/ShareWebActivity$o;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$a;->c:Lcom/join/mgps/activity/ShareWebActivity$o;

    iput-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$o$a;->a:Ljava/lang/String;

    iput p3, p0, Lcom/join/mgps/activity/ShareWebActivity$o$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$a;->a:Ljava/lang/String;

    const-class v2, Lcom/join/mgps/dto/ShareBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ShareBean;

    const/4 v1, 0x5

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setFrom(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$a;->c:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v1, v1, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/activity/ShareWebActivity$o$a;->b:I

    invoke-static {v1, v2, v0}, Lcom/join/mgps/Util/r;->p(Landroid/content/Context;ILcom/join/mgps/dto/ShareBean;)V

    return-void
.end method
