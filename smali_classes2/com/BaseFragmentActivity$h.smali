.class Lcom/BaseFragmentActivity$h;
.super Ljava/lang/Object;
.source "BaseFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseFragmentActivity;->initPopData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/BaseFragmentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseFragmentActivity$h;->a:Lcom/BaseFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/BaseFragmentActivity$h;->a:Lcom/BaseFragmentActivity;

    iget-object p1, p1, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
