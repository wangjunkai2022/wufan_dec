.class public Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;
.super Ljava/lang/Object;
.source "SmartPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-direct {v0, p1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->mWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 3
    invoke-static {v0, p1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$1102(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;Landroid/content/Context;)Landroid/content/Context;

    .line 4
    iget-object p1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->mWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-static {p1, p2}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$1202(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;Landroid/view/View;)Landroid/view/View;

    return-void
.end method

.method public static build(Landroid/app/Activity;Landroid/view/View;)Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;

    invoke-direct {v0, p0, p1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public createPopupWindow()Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->mWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->init()V

    .line 2
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->mWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    return-object v0
.end method

.method public setAlpha(F)Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->mWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0, p1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$1402(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;F)F

    return-object p0
.end method

.method public setAnimationStyle(I)Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->mWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0, p1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$1302(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;I)I

    return-object p0
.end method

.method public setOutsideTouchDismiss(Z)Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->mWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0, p1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$1502(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;Z)Z

    return-object p0
.end method

.method public setSize(II)Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->mWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0, p1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$002(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;I)I

    .line 2
    iget-object p1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$Builder;->mWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-static {p1, p2}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$102(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;I)I

    return-object p0
.end method
