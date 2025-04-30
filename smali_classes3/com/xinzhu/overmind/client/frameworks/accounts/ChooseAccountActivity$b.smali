.class Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$b;
.super Landroid/widget/ArrayAdapter;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:[Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "textViewResourceId",
            "infos"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 2
    iput-object p3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$b;->b:[Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;

    const-string p2, "layout_inflater"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$b;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$b;->a:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$b;->j()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$d;

    invoke-direct {p3, v0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$d;-><init>(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$a;)V

    .line 3
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$a;->m()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$d;->b:Landroid/widget/TextView;

    .line 4
    invoke-static {}, Lcom/xinzhu/haunted/com/android/internal/a$a;->l()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$d;->a:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$d;

    .line 7
    :goto_0
    iget-object v0, p3, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$d;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$b;->b:[Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p3, p3, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$d;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$b;->b:[Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
