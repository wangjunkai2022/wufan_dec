.class Lcom/join/mgps/customview/d$a;
.super Ljava/lang/Object;
.source "DownFinishToast.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/d;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/customview/d;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/d;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/d$a;->b:Lcom/join/mgps/customview/d;

    iput-object p2, p0, Lcom/join/mgps/customview/d$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/d$a;->b:Lcom/join/mgps/customview/d;

    invoke-virtual {p1}, Lcom/join/mgps/customview/d;->d()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/d$a;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goDownloadCenterActivity(Landroid/content/Context;)V

    return-void
.end method
