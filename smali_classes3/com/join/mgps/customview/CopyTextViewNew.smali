.class public Lcom/join/mgps/customview/CopyTextViewNew;
.super Landroid/webkit/WebView;
.source "CopyTextViewNew.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/CopyTextViewNew$b;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:Ljava/lang/String;

.field e:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/CopyTextViewNew;->d:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/join/mgps/customview/CopyTextViewNew$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/CopyTextViewNew$a;-><init>(Lcom/join/mgps/customview/CopyTextViewNew;)V

    iput-object p1, p0, Lcom/join/mgps/customview/CopyTextViewNew;->e:Landroid/os/Handler;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/CopyTextViewNew;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    .line 6
    iput-object p1, p0, Lcom/join/mgps/customview/CopyTextViewNew;->d:Ljava/lang/String;

    .line 7
    new-instance p1, Lcom/join/mgps/customview/CopyTextViewNew$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/CopyTextViewNew$a;-><init>(Lcom/join/mgps/customview/CopyTextViewNew;)V

    iput-object p1, p0, Lcom/join/mgps/customview/CopyTextViewNew;->e:Landroid/os/Handler;

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/CopyTextViewNew;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 10
    iput-object p1, p0, Lcom/join/mgps/customview/CopyTextViewNew;->d:Ljava/lang/String;

    .line 11
    new-instance p1, Lcom/join/mgps/customview/CopyTextViewNew$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/CopyTextViewNew$a;-><init>(Lcom/join/mgps/customview/CopyTextViewNew;)V

    iput-object p1, p0, Lcom/join/mgps/customview/CopyTextViewNew;->e:Landroid/os/Handler;

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/customview/CopyTextViewNew;->b()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/CopyTextViewNew;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/CopyTextViewNew;->d:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .locals 2

    const/high16 v0, 0x41a00000    # 20.0f

    .line 1
    iput v0, p0, Lcom/join/mgps/customview/CopyTextViewNew;->a:F

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/CopyTextViewNew;->b:F

    const/high16 v0, 0x41c00000    # 24.0f

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/CopyTextViewNew;->c:F

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CopyTextViewNew;->d:Ljava/lang/String;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "touchevent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    return p1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CopyTextViewNew;->d:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head><style type=\"text/css\">body{font-size:14px}</style></head><body text=\'#373737\' style=\'margin:0;padding:0;line-height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/customview/CopyTextViewNew;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "px\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    const-string v2, "<br />"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</body></html>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    move-object v1, p0

    .line 3
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextForum(Ljava/lang/String;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CopyTextViewNew;->d:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head><style type=\"text/css\">body{font-size:16px}</style></head><body text=\'#373737\' style=\'margin:0;padding:0;line-height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/customview/CopyTextViewNew;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "px\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    const-string v2, "<br />"

    .line 3
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</body></html>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    move-object v1, p0

    .line 4
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextHeader(Ljava/lang/String;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CopyTextViewNew;->d:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head><style type=\"text/css\">body{font-size:14px}</style></head><body text=\'#373737\' style=\'margin:0;padding:0;line-height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/customview/CopyTextViewNew;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "px\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    const-string v2, "<br />"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</body></html>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    move-object v1, p0

    .line 3
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
