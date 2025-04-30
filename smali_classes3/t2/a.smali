.class public Lt2/a;
.super Ljava/lang/Object;
.source "CustomConversion.java"

# interfaces
.implements Lt2/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/yatoooon/screenadaptation/a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Lcom/yatoooon/screenadaptation/a;->h(Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, p1}, Lcom/yatoooon/screenadaptation/a;->e(Landroid/view/View;)V

    .line 4
    invoke-virtual {p2, p1}, Lcom/yatoooon/screenadaptation/a;->b(Landroid/view/View;)V

    .line 5
    invoke-virtual {p2, p1}, Lcom/yatoooon/screenadaptation/a;->c(Landroid/view/View;)V

    .line 6
    invoke-virtual {p2, p1}, Lcom/yatoooon/screenadaptation/a;->d(Landroid/view/View;)V

    :cond_0
    return-void
.end method
