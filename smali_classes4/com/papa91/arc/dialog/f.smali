.class public final synthetic Lcom/papa91/arc/dialog/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/papa91/arc/widget/htmltext/OnClickATagListener;


# instance fields
.field public final synthetic a:Lcom/papa91/arc/dialog/PerfectWarmDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/papa91/arc/dialog/PerfectWarmDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/dialog/f;->a:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/papa91/arc/dialog/f;->a:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    invoke-static {v0, p1, p2, p3}, Lcom/papa91/arc/dialog/PerfectWarmDialog;->d(Lcom/papa91/arc/dialog/PerfectWarmDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
