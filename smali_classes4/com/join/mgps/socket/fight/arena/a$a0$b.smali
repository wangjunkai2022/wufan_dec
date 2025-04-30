.class Lcom/join/mgps/socket/fight/arena/a$a0$b;
.super Ljava/lang/Object;
.source "ArenaDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/socket/fight/arena/a$a0;->l(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/socket/fight/arena/a$a0;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/a$a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0$b;->a:Lcom/join/mgps/socket/fight/arena/a$a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0$b;->a:Lcom/join/mgps/socket/fight/arena/a$a0;

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a$a0;->c(Lcom/join/mgps/socket/fight/arena/a$a0;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ArchiveBean;

    invoke-static {p1, v0}, Lcom/join/mgps/socket/fight/arena/a$a0;->b(Lcom/join/mgps/socket/fight/arena/a$a0;Lcom/join/mgps/dto/ArchiveBean;)Lcom/join/mgps/dto/ArchiveBean;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0$b;->a:Lcom/join/mgps/socket/fight/arena/a$a0;

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a$a0;->f(Lcom/join/mgps/socket/fight/arena/a$a0;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0$b;->a:Lcom/join/mgps/socket/fight/arena/a$a0;

    iget-object p1, p1, Lcom/join/mgps/socket/fight/arena/a$a0;->y:Lcom/join/mgps/socket/fight/arena/a;

    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a;->a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/join/mgps/socket/fight/arena/a$y;->X(Lcom/join/mgps/dto/ArchiveBean;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0$b;->a:Lcom/join/mgps/socket/fight/arena/a$a0;

    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/a$a0;->e(Lcom/join/mgps/socket/fight/arena/a$a0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0$b;->a:Lcom/join/mgps/socket/fight/arena/a$a0;

    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/a$a0;->a(Lcom/join/mgps/socket/fight/arena/a$a0;)Lcom/join/mgps/dto/ArchiveBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveBean;->getRecordFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0$b;->a:Lcom/join/mgps/socket/fight/arena/a$a0;

    iget-object v0, v0, Lcom/join/mgps/socket/fight/arena/a$a0;->y:Lcom/join/mgps/socket/fight/arena/a;

    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/a;->a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a$a0$b;->a:Lcom/join/mgps/socket/fight/arena/a$a0;

    invoke-static {v1}, Lcom/join/mgps/socket/fight/arena/a$a0;->a(Lcom/join/mgps/socket/fight/arena/a$a0;)Lcom/join/mgps/dto/ArchiveBean;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/join/mgps/socket/fight/arena/a$y;->X(Lcom/join/mgps/dto/ArchiveBean;Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0$b;->a:Lcom/join/mgps/socket/fight/arena/a$a0;

    iget-object p1, p1, Lcom/join/mgps/socket/fight/arena/a$a0;->y:Lcom/join/mgps/socket/fight/arena/a;

    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    return-void
.end method
