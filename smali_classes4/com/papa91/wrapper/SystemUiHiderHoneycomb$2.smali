.class Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;
.super Ljava/lang/Object;
.source "SystemUiHiderHoneycomb.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/wrapper/SystemUiHiderHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;


# direct methods
.method constructor <init>(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    invoke-static {v0}, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->access$100(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;)I

    move-result v0

    and-int/2addr p1, v0

    const/16 v0, 0x10

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    iget-object p1, p1, Lcom/papa91/wrapper/SystemUiHider;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    iget-object p1, p1, Lcom/papa91/wrapper/SystemUiHider;->mOnVisibilityChangeListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {p1, v2}, Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 5
    iget-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    invoke-static {p1, v2}, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->access$002(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;Z)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    iget-object v3, p1, Lcom/papa91/wrapper/SystemUiHider;->mAnchorView:Landroid/view/View;

    invoke-static {p1}, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->access$200(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    iget-object p1, p1, Lcom/papa91/wrapper/SystemUiHider;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Landroid/view/Window;->setFlags(II)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    iget-object p1, p1, Lcom/papa91/wrapper/SystemUiHider;->mOnVisibilityChangeListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 10
    iget-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    invoke-static {p1, v0}, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->access$002(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;Z)Z

    :goto_0
    return-void
.end method
