.class Lorg/ppsspp/ppsspp/h$b;
.super Ljava/lang/Object;
.source "SimpleFileChooser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ppsspp/ppsspp/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/ppsspp/ppsspp/h;


# direct methods
.method constructor <init>(Lorg/ppsspp/ppsspp/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/h$b;->a:Lorg/ppsspp/ppsspp/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/h$b;->a:Lorg/ppsspp/ppsspp/h;

    invoke-static {v0}, Lorg/ppsspp/ppsspp/h;->a(Lorg/ppsspp/ppsspp/h;)[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    .line 2
    iget-object v0, p0, Lorg/ppsspp/ppsspp/h$b;->a:Lorg/ppsspp/ppsspp/h;

    invoke-static {v0, p2}, Lorg/ppsspp/ppsspp/h;->b(Lorg/ppsspp/ppsspp/h;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lorg/ppsspp/ppsspp/h$b;->a:Lorg/ppsspp/ppsspp/h;

    invoke-static {p1, p2}, Lorg/ppsspp/ppsspp/h;->c(Lorg/ppsspp/ppsspp/h;Ljava/io/File;)V

    .line 7
    iget-object p1, p0, Lorg/ppsspp/ppsspp/h$b;->a:Lorg/ppsspp/ppsspp/h;

    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/h;->g()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lorg/ppsspp/ppsspp/h$b;->a:Lorg/ppsspp/ppsspp/h;

    invoke-static {p1}, Lorg/ppsspp/ppsspp/h;->d(Lorg/ppsspp/ppsspp/h;)Lorg/ppsspp/ppsspp/h$c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lorg/ppsspp/ppsspp/h$b;->a:Lorg/ppsspp/ppsspp/h;

    invoke-static {p1}, Lorg/ppsspp/ppsspp/h;->d(Lorg/ppsspp/ppsspp/h;)Lorg/ppsspp/ppsspp/h$c;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/ppsspp/ppsspp/h$c;->a(Ljava/io/File;)V

    :cond_1
    :goto_0
    return-void
.end method
