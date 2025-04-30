.class Lcom/join/android/app/component/album/lib/b$a;
.super Landroid/os/Handler;
.source "ImageScaner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/album/lib/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/lib/b;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/lib/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {v0}, Lcom/join/android/app/component/album/lib/b;->a(Lcom/join/android/app/component/album/lib/b;)Lcom/join/android/app/component/album/lib/b$g;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {v0}, Lcom/join/android/app/component/album/lib/b;->a(Lcom/join/android/app/component/album/lib/b;)Lcom/join/android/app/component/album/lib/b$g;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Lcom/join/android/app/component/album/lib/b$g;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {v0}, Lcom/join/android/app/component/album/lib/b;->b(Lcom/join/android/app/component/album/lib/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {v0}, Lcom/join/android/app/component/album/lib/b;->b(Lcom/join/android/app/component/album/lib/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    iget-object p1, p1, Lcom/join/android/app/component/album/lib/b;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {p1}, Lcom/join/android/app/component/album/lib/b;->b(Lcom/join/android/app/component/album/lib/b;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    iget-object v2, v1, Lcom/join/android/app/component/album/lib/b;->f:Ljava/util/List;

    invoke-static {v1}, Lcom/join/android/app/component/album/lib/b;->b(Lcom/join/android/app/component/album/lib/b;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/album/lib/a;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    iget-object p1, p1, Lcom/join/android/app/component/album/lib/b;->f:Ljava/util/List;

    new-instance v0, Lcom/join/android/app/component/album/lib/b$a$a;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/lib/b$a$a;-><init>(Lcom/join/android/app/component/album/lib/b$a;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {p1}, Lcom/join/android/app/component/album/lib/b;->a(Lcom/join/android/app/component/album/lib/b;)Lcom/join/android/app/component/album/lib/b$g;

    move-result-object p1

    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {v0}, Lcom/join/android/app/component/album/lib/b;->b(Lcom/join/android/app/component/album/lib/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/join/android/app/component/album/lib/b$g;->c(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    iget v0, p1, Lcom/join/android/app/component/album/lib/b;->d:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/join/android/app/component/album/lib/b;->c(Lcom/join/android/app/component/album/lib/b;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {p1}, Lcom/join/android/app/component/album/lib/b;->d(Lcom/join/android/app/component/album/lib/b;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u6ca1\u626b\u63cf\u5230\u4e00\u5f20\u56fe\u7247"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {v0}, Lcom/join/android/app/component/album/lib/b;->a(Lcom/join/android/app/component/album/lib/b;)Lcom/join/android/app/component/album/lib/b$g;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Lcom/join/android/app/component/album/lib/b$g;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b$a;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {v0}, Lcom/join/android/app/component/album/lib/b;->a(Lcom/join/android/app/component/album/lib/b;)Lcom/join/android/app/component/album/lib/b$g;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Lcom/join/android/app/component/album/lib/b$g;->c(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method
