.class Lcom/join/mgps/wrapper/SystemUiHider/c$b;
.super Ljava/lang/Object;
.source "SystemUiHiderHoneycomb.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/wrapper/SystemUiHider/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/wrapper/SystemUiHider/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/wrapper/SystemUiHider/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$b;->a:Lcom/join/mgps/wrapper/SystemUiHider/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$b;->a:Lcom/join/mgps/wrapper/SystemUiHider/c;

    invoke-static {v0}, Lcom/join/mgps/wrapper/SystemUiHider/c;->i(Lcom/join/mgps/wrapper/SystemUiHider/c;)I

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
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$b;->a:Lcom/join/mgps/wrapper/SystemUiHider/c;

    iget-object p1, p1, Lcom/join/mgps/wrapper/SystemUiHider/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$b;->a:Lcom/join/mgps/wrapper/SystemUiHider/c;

    iget-object p1, p1, Lcom/join/mgps/wrapper/SystemUiHider/a;->d:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    invoke-interface {p1, v2}, Lcom/join/mgps/wrapper/SystemUiHider/a$b;->onVisibilityChange(Z)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$b;->a:Lcom/join/mgps/wrapper/SystemUiHider/c;

    invoke-static {p1, v2}, Lcom/join/mgps/wrapper/SystemUiHider/c;->h(Lcom/join/mgps/wrapper/SystemUiHider/c;Z)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$b;->a:Lcom/join/mgps/wrapper/SystemUiHider/c;

    iget-object v3, p1, Lcom/join/mgps/wrapper/SystemUiHider/a;->b:Landroid/view/View;

    invoke-static {p1}, Lcom/join/mgps/wrapper/SystemUiHider/c;->j(Lcom/join/mgps/wrapper/SystemUiHider/c;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$b;->a:Lcom/join/mgps/wrapper/SystemUiHider/c;

    iget-object p1, p1, Lcom/join/mgps/wrapper/SystemUiHider/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Landroid/view/Window;->setFlags(II)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$b;->a:Lcom/join/mgps/wrapper/SystemUiHider/c;

    iget-object p1, p1, Lcom/join/mgps/wrapper/SystemUiHider/a;->d:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/join/mgps/wrapper/SystemUiHider/a$b;->onVisibilityChange(Z)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$b;->a:Lcom/join/mgps/wrapper/SystemUiHider/c;

    invoke-static {p1, v0}, Lcom/join/mgps/wrapper/SystemUiHider/c;->h(Lcom/join/mgps/wrapper/SystemUiHider/c;Z)Z

    :goto_0
    return-void
.end method
