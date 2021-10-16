/*
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.
*/

import Foundation

protocol LoginInteractorInputProtocol{
    func fetchDataMusic()

}

final class LoginInteractor: BaseInteractor<LoginInteractorOutputProtocol> {
    
    let provider: LoginProviderProtocol = LoginProvider()
    
    
}

extension LoginInteractor: LoginInteractorInputProtocol {
    func fetchDataMusic() {
        self.provider.fetchData { data in
            switch data {
            case .success(let response):
                debugPrint(response.feed?.results?.count ?? 0)
            case .failure(let error):
                debugPrint(error)
            }
        } failure: { NetworkError in
            debugPrint(NetworkError.localizedDescription)
        }

    }
}
