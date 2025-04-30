.class Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;
.super Ljava/lang/Object;
.source "ChooseAccountTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/accounts/AuthenticatorDescription;

.field final b:Ljava/lang/String;

.field final c:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "desc",
            "name",
            "drawable"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;->a:Landroid/accounts/AuthenticatorDescription;

    .line 3
    iput-object p2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method
