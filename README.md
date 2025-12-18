Notes : 
1. jangan kacau branch 'main'
2. bila start coding, masuk branch 'main' dulu, run command "git pull"
3. then, baru pergi branch masing-masing, run command "git merge main"
4. coding 

After coding (IMPORTANT)
1. lepas coding, run command "git add ." pastu "git commit -m "message", pastu "git push" (ni paling penting, takpush takdapat pape)
2. Then gi github, pergi  pull request > new pull request > pilih nama branch yang di codekan (nama masing masing la kot) > create pull request > create pull request > merge pull request (tunggu je loading tu) > confirm merge
3. habis step ni, kiranya korang dh settle coding, so follow je step before coding kalau nak coding baru

Command notes:

git add .

git commit -m "message"

git push origin feature/login-page

git checkout epul

git merge main

git pull <!-- dalam branch 'main' >

follow coding ni untuk sidebar

<!-- SIDEBAR -->
    <div class="sidebar">
        <div class="logo">Smart School System</div>

        <ul class="menu-list">
            <li><i class="ri-home-2-line"></i><span>Home</span></li>
            <li><i class="ri-file-text-line"></i><span>Examination</span></li>
            <li><i class="ri-calendar-check-line"></i><span>Attendance</span></li>
        </ul>

        <!-- LOGOUT BUTTON -->
        <div class="logout">
            <button>
                <i class="ri-shut-down-line"></i>
            </button>
        </div>
    </div>

    <!-- LOGOUT CONFIRMATION MODAL -->
    <div id="logoutModal" class="modal">
        <div class="modal-content">
            <p>Do you want to logout from this account?</p>
            <div class="modal-buttons">
                <button id="cancelLogout">Cancel</button>
                <button id="confirmLogout">Logout</button>
            </div>
        </div>
    </div>