.class Lax/Z2/n$b;
.super Lax/z3/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lax/Z2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lax/z3/q<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Z

.field final synthetic i:Lax/Z2/n;


# direct methods
.method public constructor <init>(Lax/Z2/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lax/Z2/n$b;->i:Lax/Z2/n;

    .line 2
    .line 3
    sget-object p1, Lax/z3/q$e;->k0:Lax/z3/q$e;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lax/z3/q;-><init>(Lax/z3/q$e;)V

    .line 6
    .line 7
    .line 8
    return-void
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private w()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lax/Z2/n$b;->i:Lax/Z2/n;

    .line 3
    .line 4
    invoke-static {v1}, Lax/Z2/n;->v0(Lax/Z2/n;)Lcom/alphainventor/filemanager/file/o;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lax/Z2/n$b;->i:Lax/Z2/n;

    .line 9
    .line 10
    invoke-static {v2}, Lax/Z2/n;->u0(Lax/Z2/n;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Lcom/alphainventor/filemanager/file/o;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Lax/f3/b;->o()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lax/Z2/n$b;->h:Z
    :try_end_0
    .catch Lax/e3/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    return v0

    .line 30
    :catch_0
    move-exception v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lax/z3/q;->isCancelled()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    return v0

    .line 39
    :cond_1
    iget-object v2, p0, Lax/Z2/n$b;->i:Lax/Z2/n;

    .line 40
    .line 41
    invoke-static {v2}, Lax/Z2/n;->w0(Lax/Z2/n;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Lax/Z2/n$b;->i:Lax/Z2/n;

    .line 48
    .line 49
    invoke-static {v2}, Lax/Z2/n;->v0(Lax/Z2/n;)Lcom/alphainventor/filemanager/file/o;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2, v1, v0}, Lcom/alphainventor/filemanager/file/o;->k(Lcom/alphainventor/filemanager/file/n;Z)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    return v0

    .line 58
    :cond_2
    iget-object v0, p0, Lax/Z2/n$b;->i:Lax/Z2/n;

    .line 59
    .line 60
    invoke-static {v0}, Lax/Z2/n;->v0(Lax/Z2/n;)Lcom/alphainventor/filemanager/file/o;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, v1}, Lcom/alphainventor/filemanager/file/o;->o1(Lcom/alphainventor/filemanager/file/n;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-static {v1}, Lax/f3/B;->P(Lcom/alphainventor/filemanager/file/n;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/alphainventor/filemanager/file/n;->B()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v3, ".nomedia"

    .line 81
    .line 82
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    iget-object v2, p0, Lax/Z2/n$b;->i:Lax/Z2/n;

    .line 89
    .line 90
    invoke-virtual {v2}, Lax/Z2/j;->r()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1}, Lcom/alphainventor/filemanager/file/n;->E()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    filled-new-array {v1}, [Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const/4 v3, 0x0

    .line 107
    invoke-static {v2, v1, v3, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    return v0

    .line 111
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    iput-boolean v0, p0, Lax/Z2/n$b;->h:Z

    .line 115
    .line 116
    return v0
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
.end method


# virtual methods
.method protected bridge synthetic g([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lax/Z2/n$b;->x([Ljava/lang/Void;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected bridge synthetic p(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lax/Z2/n$b;->y(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected bridge synthetic q(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lax/Z2/n$b;->z(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected varargs x([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    invoke-direct {p0}, Lax/Z2/n$b;->w()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lax/Z2/n$b;->i:Lax/Z2/n;

    .line 9
    .line 10
    invoke-virtual {v1}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Lax/Z2/v$b;->q:Lax/Z2/v$b;

    .line 15
    .line 16
    invoke-virtual {v1, v2, v0}, Lax/Z2/v;->c(Lax/Z2/v$b;I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Lax/Z2/n$b;->i:Lax/Z2/n;

    .line 21
    .line 22
    invoke-virtual {v1}, Lax/Z2/j;->w()Lax/Z2/v;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Lax/Z2/v$b;->X:Lax/Z2/v$b;

    .line 27
    .line 28
    invoke-virtual {v1, v2, v0}, Lax/Z2/v;->c(Lax/Z2/v$b;I)V

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lax/Z2/n$b;->h:Z

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lax/Z2/n$b;->i:Lax/Z2/n;

    .line 36
    .line 37
    invoke-static {v1, v0}, Lax/Z2/n;->x0(Lax/Z2/n;Z)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v1, p0, Lax/Z2/n$b;->i:Lax/Z2/n;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-static {v1, v2}, Lax/Z2/n;->x0(Lax/Z2/n;Z)Z

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object v1, p0, Lax/Z2/n$b;->i:Lax/Z2/n;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Lax/Z2/j;->j0(Z)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1
    .line 57
    .line 58
    .line 59
    .line 60
.end method

.method protected y(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lax/Z2/n$b;->i:Lax/Z2/n;

    .line 2
    .line 3
    invoke-virtual {p1}, Lax/Z2/j;->e0()V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected z(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lax/Z2/n$b;->i:Lax/Z2/n;

    .line 2
    .line 3
    invoke-virtual {p1}, Lax/Z2/j;->o()V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
