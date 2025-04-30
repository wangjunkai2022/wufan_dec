.class public Lcom/join/mgps/Util/w;
.super Landroid/text/method/LinkMovementMethod;
.source "CustomLinkMovementMethod.java"


# static fields
.field private static a:Lcom/join/mgps/Util/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static a()Lcom/join/mgps/Util/w;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/w;->a:Lcom/join/mgps/Util/w;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/Util/w;

    invoke-direct {v0}, Lcom/join/mgps/Util/w;-><init>()V

    sput-object v0, Lcom/join/mgps/Util/w;->a:Lcom/join/mgps/Util/w;

    .line 3
    :cond_0
    sget-object v0, Lcom/join/mgps/Util/w;->a:Lcom/join/mgps/Util/w;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 4
    instance-of p3, p1, Landroid/view/ViewGroup;

    if-eqz p3, :cond_0

    .line 5
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->performClick()Z

    move-result p1

    return p1

    :cond_0
    return p2
.end method
