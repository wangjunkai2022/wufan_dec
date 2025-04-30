.class Lcom/papa91/wrapper/SystemUiHiderHoneycomb$1;
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
    iput-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$1;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$1;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    iget-object p1, p1, Lcom/papa91/wrapper/SystemUiHider;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$1;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    iget-object p1, p1, Lcom/papa91/wrapper/SystemUiHider;->mOnVisibilityChangeListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 4
    iget-object p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$1;->this$0:Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    invoke-static {p1, v0}, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->access$002(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;Z)Z

    return-void
.end method
