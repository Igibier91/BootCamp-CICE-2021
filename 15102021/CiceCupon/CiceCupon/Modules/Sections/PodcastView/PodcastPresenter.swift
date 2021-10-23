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

protocol PodcastPresenterInputProtocol {
    func fetchData()
    func getInformationObject() -> ResultiTunes?
}

protocol PodcastInteractorOutputProtocol {
    func fetchDataOutputInteractor(data: ItunesServerModel?)
    
}


final class PodcastPresenter: BasePresenter<PodcastViewControllerProtocol, PodcastInteractorInputProtocol, PodcastRouterInputProtocol> {
    
    var arrayResultados: [ResultiTunes] = []
     
    
}

extension PodcastPresenter: PodcastPresenterInputProtocol {
    func fetchData(){
        self.interactor?.fetchDataMusic()
    }
    func getInformationObject() -> ResultiTunes? {
        return self.arrayResultados[0]
    }
}

extension PodcastPresenter: PodcastInteractorOutputProtocol {
    func fetchDataOutputInteractor(data: ItunesServerModel?) {
        self.arrayResultados.removeAll()
        self.arrayResultados = data?.feed?.results ?? []
        self.vc?.refreshView()
    }
}

