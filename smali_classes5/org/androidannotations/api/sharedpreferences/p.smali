.class public final Lorg/androidannotations/api/sharedpreferences/p;
.super Lorg/androidannotations/api/sharedpreferences/b;
.source "StringPrefField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/androidannotations/api/sharedpreferences/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/androidannotations/api/sharedpreferences/b;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/sharedpreferences/p;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic h(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/sharedpreferences/p;->k(Ljava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/b;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected k(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
