.class public Lcom/join/android/app/component/album/adapter/b;
.super Landroid/widget/ArrayAdapter;
.source "CropOptionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/join/mgps/dto/CropOption;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/CropOption;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/CropOption;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0c0113

    .line 1
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2
    iput-object p2, p0, Lcom/join/android/app/component/album/adapter/b;->a:Ljava/util/ArrayList;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/component/album/adapter/b;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/android/app/component/album/adapter/b;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0113

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/album/adapter/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CropOption;

    if-eqz p1, :cond_1

    const p3, 0x7f090800

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/join/mgps/dto/CropOption;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f09113e

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/join/mgps/dto/CropOption;->title:Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_1
    return-object p3
.end method
