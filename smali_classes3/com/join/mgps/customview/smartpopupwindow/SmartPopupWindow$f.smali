.class public Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;
.super Ljava/lang/Object;
.source "SmartPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-direct {v0, p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->f(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;Landroid/content/Context;)Landroid/content/Context;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-static {p1, p2}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->g(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;Landroid/view/View;)Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;)Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->x()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    return-object v0
.end method

.method public c(F)Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->i(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;F)F

    return-object p0
.end method

.method public d(I)Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->h(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;I)I

    return-object p0
.end method

.method public e(Z)Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->j(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;Z)Z

    return-object p0
.end method

.method public f(II)Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->b(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;I)I

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-static {p1, p2}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->e(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;I)I

    return-object p0
.end method
