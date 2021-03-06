<div class="ui column two grid stackable equal width container">
    <div class="six wide column">
        <div class="ui attached message">
            <div class="header">
                <h2>Belum punya akun? Daftar sekarang</h2>
            </div>
            <p>Isi form berikut untuk mendaftarkan akun baru</p>
        </div>
        <form action="/register" method="post" class="ui form attached fluid segment">
            {{ flash.output() }}
            <div class="field">
                {{ form.label('name') }}
                {{ form.render('name', ['placeholder': 'Nama']) }}
            </div>
            <div class="field">
                {{ form.label('username') }}
                {{ form.render('username', ['placeholder': 'Username']) }}
            </div>
            <div class="field">
                {{ form.label('password') }}
                {{ form.render('password', ['placeholder': 'Password']) }}
            </div>
            <div class="field">
                {{ form.label('email') }}
                {{ form.render('email', ['placeholder': 'Email']) }}
            </div>
            <div class="field">
                {{ form.label('phone') }}
                {{ form.render('phone', ['placeholder': 'Nomor Telepon']) }}
            </div>
            <div class="field">
                {{ form.label('gender') }}
                {{ form.render('gender') }}
            </div>
            <div class="field">
                <div class="field">
                    {{ form.label('address') }}
                    {{ form.render('address', ['rows': '2', 'placeholder': 'Alamat']) }}
                </div>
            </div>
            <button type="submit" class="ui blue submit button">Submit</button>
        </form>

        <div class="ui bottom attached warning message">
            <i class="icon help"></i>
            Sudah punya akun? <a href="#">Masuk disini</a>
        </div>
    </div>
    <div class="column center aligned">
        <h1 class="ui header">
            Selamat datang di Laundry Service Organizer
        </h1>
        <p class="ui medium-text">Kami siap memudahkan urusan anda</p>
        <img src="https://previews.123rf.com/images/yupiramos/yupiramos1708/yupiramos170807798/83677680-laundry-room-with-washing-machine-and-clothes-vector-illustration-graphic-design.jpg"
            alt="" class="ui centered big image">
    </div>
</div>