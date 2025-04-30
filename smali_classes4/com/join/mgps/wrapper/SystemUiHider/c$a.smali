.class Lcom/join/mgps/wrapper/SystemUiHider/c$a;
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
    iput-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$a;->a:Lcom/join/mgps/wrapper/SystemUiHider/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$a;->a:Lcom/join/mgps/wrapper/SystemUiHider/c;

    iget-object v0, v0, Lcom/join/mgps/wrapper/SystemUiHider/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$a;->a:Lcom/join/mgps/wrapper/SystemUiHider/c;

    iget-object p1, p1, Lcom/join/mgps/wrapper/SystemUiHider/a;->d:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/join/mgps/wrapper/SystemUiHider/a$b;->onVisibilityChange(Z)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$a;->a:Lcom/join/mgps/wrapper/SystemUiHider/c;

    invoke-static {p1, v0}, Lcom/join/mgps/wrapper/SystemUiHider/c;->h(Lcom/join/mgps/wrapper/SystemUiHider/c;Z)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$a;->a:Lcom/join/mgps/wrapper/SystemUiHider/c;

    iget-object p1, p1, Lcom/join/mgps/wrapper/SystemUiHider/a;->d:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/join/mgps/wrapper/SystemUiHider/a$b;->onVisibilityChange(Z)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$a;->a:Lcom/join/mgps/wrapper/SystemUiHider/c;

    invoke-static {p1, v0}, Lcom/join/mgps/wrapper/SystemUiHider/c;->h(Lcom/join/mgps/wrapper/SystemUiHider/c;Z)Z

    :goto_0
    return-void
.end method
