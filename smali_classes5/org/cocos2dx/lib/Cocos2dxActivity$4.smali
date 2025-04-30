.class Lorg/cocos2dx/lib/Cocos2dxActivity$4;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget-object p1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 4
    sget-object p1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
