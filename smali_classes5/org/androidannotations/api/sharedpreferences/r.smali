.class public final Lorg/androidannotations/api/sharedpreferences/r;
.super Lorg/androidannotations/api/sharedpreferences/b;
.source "StringSetPrefField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/androidannotations/api/sharedpreferences/b<",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/androidannotations/api/sharedpreferences/b;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/sharedpreferences/r;->j(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic h(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/sharedpreferences/r;->k(Ljava/util/Set;)V

    return-void
.end method

.method public j(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/b;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/b;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/androidannotations/api/sharedpreferences/m;->c(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method protected k(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/b;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/androidannotations/api/sharedpreferences/m;->e(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/util/Set;)V

    .line 3
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/b;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
