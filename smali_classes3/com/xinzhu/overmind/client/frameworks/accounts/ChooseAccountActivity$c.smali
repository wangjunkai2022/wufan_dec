.class Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "drawable"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method
