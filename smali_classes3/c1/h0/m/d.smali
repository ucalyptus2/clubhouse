.class public final Lc1/h0/m/d;
.super Ljava/lang/Object;
.source "OkHostnameVerifier.kt"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field public static final a:Lc1/h0/m/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc1/h0/m/d;

    invoke-direct {v0}, Lc1/h0/m/d;-><init>()V

    sput-object v0, Lc1/h0/m/d;->a:Lc1/h0/m/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, La1/n/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    .line 8
    :cond_4
    sget-object p1, Lkotlin/collections/EmptyList;->h:Lkotlin/collections/EmptyList;
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 9
    :catch_0
    sget-object p1, Lkotlin/collections/EmptyList;->h:Lkotlin/collections/EmptyList;

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 12

    const-string v0, "host"

    invoke-static {p1, v0}, La1/n/b/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "certificate"

    invoke-static {p2, v0}, La1/n/b/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc1/h0/c;->a:[B

    const-string v0, "$this$canParseAsIpAddress"

    invoke-static {p1, v0}, La1/n/b/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lc1/h0/c;->f:Lkotlin/text/Regex;

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p1}, Lb1/b/j/a;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x7

    .line 4
    invoke-virtual {p0, p2, v0}, Lc1/h0/m/d;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p2

    .line 5
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 6
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lb1/b/j/a;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, La1/n/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_6

    .line 8
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Locale.US"

    invoke-static {v0, v3}, La1/n/b/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v0}, La1/n/b/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 9
    invoke-virtual {p0, p2, v4}, Lc1/h0/m/d;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p2

    .line 10
    instance-of v5, p2, Ljava/util/Collection;

    if-eqz v5, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_7

    .line 11
    :cond_3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    move v6, v2

    goto :goto_0

    :cond_5
    move v6, v1

    :goto_0
    if-nez v6, :cond_12

    const-string v6, "."

    .line 13
    invoke-static {p1, v6, v1, v4}, Lkotlin/text/StringsKt__IndentKt;->F(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    if-nez v7, :cond_12

    const-string v7, ".."

    .line 14
    invoke-static {p1, v7, v1, v4}, Lkotlin/text/StringsKt__IndentKt;->e(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_6

    goto/16 :goto_4

    :cond_6
    if-eqz v5, :cond_8

    .line 15
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    goto :goto_1

    :cond_7
    move v8, v1

    goto :goto_2

    :cond_8
    :goto_1
    move v8, v2

    :goto_2
    if-nez v8, :cond_12

    .line 16
    invoke-static {v5, v6, v1, v4}, Lkotlin/text/StringsKt__IndentKt;->F(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    if-nez v8, :cond_12

    .line 17
    invoke-static {v5, v7, v1, v4}, Lkotlin/text/StringsKt__IndentKt;->e(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    if-eqz v7, :cond_9

    goto/16 :goto_4

    .line 18
    :cond_9
    invoke-static {p1, v6, v1, v4}, Lkotlin/text/StringsKt__IndentKt;->e(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    if-nez v7, :cond_a

    .line 19
    invoke-static {p1, v6}, Ld0/e/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_a
    move-object v7, p1

    .line 20
    :goto_3
    invoke-static {v5, v6, v1, v4}, Lkotlin/text/StringsKt__IndentKt;->e(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    if-nez v8, :cond_b

    .line 21
    invoke-static {v5, v6}, Ld0/e/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 22
    :cond_b
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6, v3}, La1/n/b/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v5, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, La1/n/b/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "*"

    .line 23
    invoke-static {v5, v6, v1, v4}, Lkotlin/text/StringsKt__IndentKt;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v6

    if-nez v6, :cond_c

    .line 24
    invoke-static {v7, v5}, La1/n/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_5

    :cond_c
    const-string v6, "*."

    .line 25
    invoke-static {v5, v6, v1, v4}, Lkotlin/text/StringsKt__IndentKt;->F(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_12

    const/16 v8, 0x2a

    const/4 v9, 0x4

    invoke-static {v5, v8, v2, v1, v9}, Lkotlin/text/StringsKt__IndentKt;->l(Ljava/lang/CharSequence;CIZI)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_d

    goto :goto_4

    .line 26
    :cond_d
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v8, v11, :cond_e

    goto :goto_4

    .line 27
    :cond_e
    invoke-static {v6, v5}, La1/n/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_4

    .line 28
    :cond_f
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v5, v6}, La1/n/b/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {v7, v5, v1, v4}, Lkotlin/text/StringsKt__IndentKt;->e(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_4

    .line 30
    :cond_10
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v6, v5

    if-lez v6, :cond_11

    const/16 v5, 0x2e

    add-int/lit8 v6, v6, -0x1

    .line 31
    invoke-static {v7, v5, v6, v1, v9}, Lkotlin/text/StringsKt__IndentKt;->p(Ljava/lang/CharSequence;CIZI)I

    move-result v5

    if-eq v5, v10, :cond_11

    goto :goto_4

    :cond_11
    move v5, v2

    goto :goto_5

    :cond_12
    :goto_4
    move v5, v1

    :goto_5
    if-eqz v5, :cond_4

    :goto_6
    move v1, v2

    :cond_13
    :goto_7
    return v1
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, La1/n/b/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session"

    invoke-static {p2, v0}, La1/n/b/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    aget-object p2, p2, v0

    if-eqz p2, :cond_0

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, p2}, Lc1/h0/m/d;->b(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v0
.end method
