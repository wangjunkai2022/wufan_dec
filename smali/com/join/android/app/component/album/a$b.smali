.class Lcom/join/android/app/component/album/a$b;
.super Ljava/lang/Object;
.source "AlbumPopupWindow.java"

# interfaces
.implements Lcom/join/android/app/component/album/lib/b$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/a;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/a$b;->a:Lcom/join/android/app/component/album/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/adapter/a;

    iget-object v1, p0, Lcom/join/android/app/component/album/a$b;->a:Lcom/join/android/app/component/album/a;

    invoke-static {v1}, Lcom/join/android/app/component/album/a;->a(Lcom/join/android/app/component/album/a;)Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/album/adapter/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2
    iget-object v1, p0, Lcom/join/android/app/component/album/a$b;->a:Lcom/join/android/app/component/album/a;

    invoke-static {v1}, Lcom/join/android/app/component/album/a;->b(Lcom/join/android/app/component/album/a;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/album/a$b;->a:Lcom/join/android/app/component/album/a;

    invoke-static {v0}, Lcom/join/android/app/component/album/a;->b(Lcom/join/android/app/component/album/a;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/join/android/app/component/album/a$b$a;

    invoke-direct {v1, p0, p1}, Lcom/join/android/app/component/album/a$b$a;-><init>(Lcom/join/android/app/component/album/a$b;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
