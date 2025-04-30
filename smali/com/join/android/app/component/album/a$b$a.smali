.class Lcom/join/android/app/component/album/a$b$a;
.super Ljava/lang/Object;
.source "AlbumPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/a$b;->c(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/join/android/app/component/album/a$b;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/a$b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/a$b$a;->b:Lcom/join/android/app/component/album/a$b;

    iput-object p2, p0, Lcom/join/android/app/component/album/a$b$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/join/android/app/component/album/a;->f:Lcom/join/android/app/component/album/a$e;

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/android/app/component/album/a$b$a;->a:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/android/app/component/album/lib/a;

    invoke-interface {p1, p2}, Lcom/join/android/app/component/album/a$e;->a(Lcom/join/android/app/component/album/lib/a;)V

    :cond_0
    return-void
.end method
